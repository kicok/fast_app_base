import 'package:fast_app_base/screen/main/tab/home/vo/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 300000000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 = BankAccount(bankShinhan, 300000000000, accountTypeName: '저축예금');
final bankAccountShinhan3 = BankAccount(bankShinhan, 300000000000, accountTypeName: '저축예금');
final bankAccountToss = BankAccount(bankTtoss, 50000000);
final bankAccountKakao = BankAccount(bankKakao, 70000000, accountTypeName: '입출금통장');

main(){
  print('test');
}

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];
