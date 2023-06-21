let nowMonth = new Date(); // 현재 월을 기준으로 달력 생성

function createCalendar() {
  var calendarContainer = document.getElementById("calendarContainer");
  // 달력을 생성하고 calendarContainer에 추가하는 코드 작성
  // 예약 달력을 작게 보여주는 부분을 구현하세요.
}

function buildCalendar() {
  let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1); // 이번달 1일
  let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0); // 이번달 마지막날

  let tbody_Calendar = document.querySelector(".Calendar > tbody");

  while (tbody_Calendar.rows.length > 0) {
    tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
  }

  let weekdays = ["일", "월", "화", "수", "목", "금", "토"]; // 요일 배열

  for (let i = 0; i < 6; i++) {
    let nowRow = tbody_Calendar.insertRow();

    for (let j = 0; j < 7; j++) {
      let nowDay = (i * 7) + j - firstDate.getDay() + 1;

      let nowColumn = nowRow.insertCell();
      let newDIV = document.createElement("p");

      if (nowDay > 0 && nowDay <= lastDate.getDate()) {
        newDIV.innerHTML = nowDay + "<br>" + weekdays[j];
        nowColumn.appendChild(newDIV);

        let currentDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), nowDay);
        if (currentDate < today) {
          newDIV.className = "pastDay";
        } else if (currentDate.getFullYear() === today.getFullYear() && currentDate.getMonth() === today.getMonth() && currentDate.getDate() === today.getDate()) {
          newDIV.className = "today";
          newDIV.onclick = function() {
            choiceDate(this);
          };
        } else {
          newDIV.className = "futureDay";
          newDIV.onclick = function() {
            choiceDate(this);
          };
        }
      }
    }
  }
}



function choiceDate(newDIV) {
  if (document.getElementsByClassName("choiceDay")[0]) {
    document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");
  }
  newDIV.classList.add("choiceDay");
}

function prevCalendar() {
  nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate()); // 현재 달을 1 감소
  buildCalendar();
}

function nextCalendar() {
  nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate()); // 현재 달을 1 증가
  buildCalendar();
}

function leftPad(value) {
  if (value < 10) {
    value = "0" + value;
    return value;
  }
  return value;
}

document.getElementById("reserve").addEventListener("click", function() {
  createCalendar();
});

window.onload = function() {
  const reserveButton = document.getElementById('reserve');
  const calendarContainer = document.getElementById('calendarContainer');

  reserveButton.onclick = function() {
    calendarContainer.classList.toggle('hidden');
    buildCalendar();
  }

  // buildCalendar(); // 예약하기 버튼을 클릭하기 이전에 달력을 생성하던 코드 삭제
}
