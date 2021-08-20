import 'dart:io';

import 'package:dio/dio.dart';
import 'package:superstarteam/utils/utils.dart';

mixin SendWithToastMixin {
  Future<dynamic> sendWithToast({
    required Future<dynamic> tryBloc,
    bool isRepeat = false,
    String info = 'info',
    String toast = 'Что-то пошло не так',
  }) async {
    try {
      final result = await tryBloc;
      return result;
    } on DioError catch (e) {
      final data = e.response?.data;
      if (data != null && data.toString().contains(info)) {
        try {
          final String msg = data['$info'] ?? toast;
          ToastMsg.showToast(msg);
        } catch (e) {
          ToastMsg.showToast(toast);
        }
      } else {
        if (e.error.toString().contains('error = 101')) {
          print('error = 101');
          ToastMsg.showToast('Проблемы с соединением');
        } else {
          print('Что-то пошло не так');
          ToastMsg.showToast(toast);
        }
      }
      if (isRepeat) {
        await Future.delayed(Constants.repeatDuration);
        sendWithToast(tryBloc: tryBloc);
      } else {
        return e;
      }
    } on SocketException catch (_) {
      {
        print(' SocketException catch (_) {');
        ToastMsg.showToast('Проблемы с соединением');
      }
      await Future.delayed(Constants.repeatDuration);
      sendWithToast(tryBloc: tryBloc);
    } catch (_) {
      {
        print('Произошла непредвиденная ошибка');
        ToastMsg.showToast('Произошла непредвиденная ошибка');
      }
      await Future.delayed(Constants.repeatDuration);
      sendWithToast(tryBloc: tryBloc);
    }
  }
}
