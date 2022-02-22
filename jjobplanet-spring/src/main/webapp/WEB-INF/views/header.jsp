<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div id="warp-header">
	<div id="warp-header-container">
	    <div style="display: flex; margin-right: 30px; vertical-align: middle; align-items: center;"><a href="/">JJobPlanet</a></div>   
	    <div style="width: 100%; display: flex; align-items: center;">
	        <div style="margin-right: 16px;"><a href="#">기업정보</a></div>   
	        <div style="margin-right: 16px;"><a href="#">채용공고</a></div> 
	    </div>    
	    
	    <div style="width: 100%; display: flex; justify-content: end; align-items: center;">
	        <div><a href="./login">로그인</a></div>   
	        <div style="margin-left: 16px;"><a href="./join">회원가입</a></div>    
	    </div> 
	</div>
</div>

<div id="main-search-container" style="display: flex; align-items: center; padding: 0 16px;">
    <span class="material-icons" >search</span>
    <input type="text" id="search-input" style="width: 100%; outline: none; border: none;" placeholder="검색어를 입력해 주세요 " onKeypress="javascript:if(event.keyCode===13){search()}">
    <span id="input-clear" class="material-icons" onclick="clearSearchInput()">clear</span>
</div>
 

<div id="search-history" style="display: none; position: absolute; width: 1200px; background-color: white; z-index: 999;">
    <div style="padding: 16px; ">
        <div style="font-weight: bold">최근 검색어</div>
        <div style="display: block;">
            
            <ul style="margin-top: 12px;">
                <li><a href="#">오피지지</a></li>
                <li><a href="#">우아한 형제들</a></li>
                <li><a href="#">토스</a></li>
                <li><a href="#">카카오</a></li>
                <li><a href="#">쿠팡</a></li>
            </ul>
        </div>  
       
    </div>
    <div style="border-top: solid black 1px; padding: 16px">
        <ul style="display:flex">
            <li style="padding-right: 16px;"><a href="#">모두 지우기</a></li>
            <li style="padding-right: 16px;"><a href="#">모두 지우기</a></li>
            <li style="padding-right: 16px;"><a href="#">모두 지우기</a></li>

        </ul>
    </div>
   
</div>
