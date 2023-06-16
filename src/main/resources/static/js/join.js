/**
 * 
 */
function joinCheck() {
	 
	 if(document.join_frm.mid.value.length == 0) {
		 alert("아이디는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
	 if(document.join_frm.mpw.value.length == 0) {
		 alert("비밀번호는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
	 if(document.join_frm.mname.value.length == 0) {
		 alert("이름은 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
 	 if(document.join_frm.memail.value.length == 0) {
		 alert("이메일은 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }	 
	 
 	 if(document.join_frm.mmobile.value.length == 0) {
		 alert("휴대전화번호는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
	 document.join_frm.submit();
	 
 }
 
function e_joinCheck() {
	 
	 if(document.e_join_frm.eid.value.length == 0) {
		 alert("아이디는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
	 if(document.e_join_frm.epw.value.length == 0) {
		 alert("비밀번호는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
	 if(document.e_join_frm.ename.value.length == 0) {
		 alert("이름은 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
 	 if(document.e_join_frm.eemail.value.length == 0) {
		 alert("이메일은 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }	 
	 
 	 if(document.e_join_frm.emobile.value.length == 0) {
		 alert("휴대전화번호는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
  	 if(document.e_join_frm.egender.value.length == 0) {
		 alert("성별은 필수 체크사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
  	 if(document.e_join_frm.etype.value.length == 0) {
		 alert("분야는 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
   	 if(document.e_join_frm.earea.value.length == 0) {
		 alert("지역은 필수 입력사항입니다. 다시 확인해 주세요.");
		 return;
	 }
	 
	 document.e_join_frm.submit();
	 
 }