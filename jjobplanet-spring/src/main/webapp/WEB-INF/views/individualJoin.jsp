<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- INFORMATION -->
        <title>NO.1 기업 정보 플랫폼 | 잡플래닛</title>

        <!-- METAS-->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- STYLE-->
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>    
        
        <script>
		
        function formCheck() 
			{				
				let umail = $('#umail').val();
				let upw = $('#upw').val();

				if (umail === '') alert('아이디를 입력해 주세요');
				else if (upw === '' || upwcheck === '' ) alert('비밀번호를 입력해 주세요');
				else if (upw !== upwcheck) alert('비밀번호가 일치 하지 않습니다.');
				else {
					$.ajax({
						url: 'joinOk.do',
				        method: 'POST',
				        data: {
				        	'umail' : umail,
				       	    'upw' : upw				           
				        },
				        success : (response) => {   location.href = 'joinOk.do';	 }	      
					})
				}			
			}

        </script>

    </head>
    <body>
        <div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <form name="individualJoin" id="individualJoin" method="post" action="joinOk.do"  onsubmit="return formCheck();">
                <div>
                    <img style="width: 500px; height: auto;object-fit: cover;" src="./img/recruit.png";>
                    <div>
                        <h1>회원가입(개인)</h1>     
                        <div style="margin-top: 40px; display: block;">
                            <input type="email" name="umail" id="umail" placeholder="이메일">
                            <button onclick="">중복확인</button>
                        </div>
                        <div style="margin-top: 16px;">
                            <input type="password" size="20" id="upw" name="upw" placeholder="비밀번호">
                            <input type="password" size="20" id="upwcheck" name="upwcheck" placeholder="비밀번호 확인">
                        </div>

                        <div  style="margin-top: 16px;">
                            <textarea style="width: 500px; height: 200px;" readonly></textarea>
                        </div>
                        
                        <div style="margin-top: 16px;">    
                            <input type="checkbox" style="margin-right: 8px;">약관에 동의합니다.
                        </div>

                        <div style="margin-top: 16px;">    
                            <input type="submit"  value="가입완료">
                        </div>
                        
                    </div>
                </div>                                            
            </form>
        </div> 
    </body>
</html>