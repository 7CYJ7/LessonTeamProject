/**
 * 
 */

   function writeCheck() {
	 
	 if (document.write_frm.rtemail.value.length == 0){
		 alert("이메일은 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 if (document.write_frm.rtmoblie.value.length == 0){
		 alert("휴대전화번호는 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 if (document.write_frm.rtdate.value.length == 0){
		 alert("예약 날짜 선택은 필수 입력사항입니다. 다시 확인 해주세요");
		 return false;
	 }
	 
	 document.write_frm.submit();
 }