<!DOCTYPE html>
<!--
  #%L
  iCanCode - it's a dojo-like platform from developers to developers.
  %%
  Copyright (C) 2018 Codenjoy
  %%
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as
  published by the Free Software Foundation, either version 3 of the
  License, or (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public
  License along with this program.  If not, see
  <http://www.gnu.org/licenses/gpl-3.0.html>.
  #L%
  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
  <head>
    <title>ICanCode</title>
    <link href="${ctx}/resources/icancode/css/reset.css" rel="stylesheet"/>
    <link href="${ctx}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/resources/icancode/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="${ctx}/resources/icancode/css/landing-style.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <script src="${ctx}/resources/icancode/js/jquery/jquery-3.1.0.min.js"></script>
    <script src="${ctx}/resources/icancode/js/plugins-scroll.js"></script>
    <script>
        $(document).ready(function () {
            var url = '/codenjoy-contest/resources/icancode/registration.html';
            $('.go-registration').click(function() {
               window.location.href = url;
            });

          $('#logo').dblclick(function() {
                var time = 256000;
                var body = $("html, body");

                body.animate({ scrollTop: $(document).height() }, time, 'linear');
                setTimeout(function() {
                    body.animate({scrollTop:0}, time, 'linear');
                },time);
                setInterval(function(){
                    body.animate({ scrollTop: $(document).height() }, time, 'linear');
                    setTimeout(function() {
                        body.animate({scrollTop:0}, time, 'linear');
                    },time);
                },time*2);
          });

          $("#nav").on("click","a", function (event) {
              event.preventDefault();
              var id = $(this).attr('href'),
              top = $(id).offset().top;
              $('body,html').animate({scrollTop: top}, 1000);
          });

          try {
              $.browserSelector();
              if($("html").hasClass("chrome")) {
                  $.smoothScroll();
              }
          } catch(err) {

          };

          $('#scrollup').mouseover( function(){
              $( this ).animate({opacity: 0.8},100);
          }).mouseout( function(){
              $( this ).animate({opacity: 0.5},100);
          }).click( function(){
              window.scroll(0 ,0);
              return false;
          });

          $(window).scroll(function(){
              if ( $(document).scrollTop() > 0 ) {
                  $('#scrollup').fadeIn('fast');
              } else {
                  $('#scrollup').fadeOut('fast');
              }
          });
        });
    </script>
  </head>
  <body>
    <div class="wrapper">
      <div class="container">
		<header class="header row">
          <div class="logo-container col-md-6 col-xs-12">
            <div class="logo-epam inline" href="#" title="EPAM"><a target="_blank" href="https://www.epam.com/"><img src="../../../../view/icancode/img/epam_logo.jpg"></a></div>
            <div class="logo-dojo inline" href="#" title="DOJO"><img id="logo" src="../../../../view/icancode/img/dojo_logo.png"><span class="logo-title"><span class="text-uppercase after-line">EPAM DOJO</span>iCanCode</span></div>
          </div>
          <nav class="nav col-md-6 col-xs-12 text-right">
            <ul class="nav-list" id="nav">
              <li class="nav-item inline text-uppercase"><a href="#desc">About</a></li>
              <li class="nav-item inline text-uppercase"><a href="#about">Codenjoy</a></li>
              <li class="nav-item inline text-uppercase"><a href="#rules">Rules</a></li>
              <li class="nav-item inline text-uppercase"><div class="go-registration" >Sign in</div></li>
            </ul>
          </nav>
		</header>
      </div>
      <section class="section promo">
        <div class="container text-center">
          <h1 class="promo-title">Just think like a real programmer <br> and win a prize!</h1>
          <img class="promo-img" src="../../../../view/icancode/img/landing-logo.png" alt="promo-image"/>
        </div>
      </section>
      <a id="desc"></a>
       <section class="section description">
        <div class="container text-center">
          <h1 class="title text-center text-uppercase">About iCanCode game</h1>
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 text-justify">
              <p>
              Ever wondered how software engineers think? And why in this very way? What is required to do the programming job properly? Try playing this coding game to feel the engineering vibe! No programming skills needed, just think like a programmer!
              </p>
              <p>
              You can play on your own or compete against other people. The one with the most engineering brain is going to be the winner!
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
              <div class="action-link text-uppercase go-registration" >Go and outhink them all!<i class="fa fa-angle-right"></i></div>
            </div>
          </div>
          <div class="galery row">
            <!--div class="col-xs-4">
              <img class="galery-img" src="img/1.png" />
            </div-->
            <center>
				<div style="width:100%">
				  <img class="galery-img" src="../../../../view/icancode/img/2.png" />
				</div>
			</center>
            <!--div class="col-xs-4">
              <img class="galery-img" src="img/3.png" />
            </div-->
          </div>
        </div>
      </section>
      <a id="about"></a>
       <section class="section about">
        <div class="container text-center">
          <h1 class="title text-center text-uppercase">About Codenjoy as a platform</h1>
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 text-justify">
              <p>
                “I can code” is based on “codenjoy” platform. “Codenjoy” is a community-based dojo-like project which means everyone can contribute, even you! We provide tools and code, so you could get straight to creating your own game like “I can code”. We developed it to make our training process more fun. The main idea is about students and solving their problems step by step. The contest mode and pair programming make it more fun. So a student turns into a child in a sandbox. <span class="important-text">Play. Learn. Enjoy.</span>
              </p>
            </div>
          </div>
        </div>
      </section>
      <a id="rules"></a>
      <section class="section rules">
        <div class="container text-center">
          <h1 class="title text-center text-uppercase">Full Rules</h1>
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 text-center">
              <p>
                “I can code” is a game to study the programmer’s workflow by playing a game. With this project we wanted to show how programmers do their job and what difficulties they encounter.
              </p>
            </div>
          </div>
          <ul class="rules-list">
            <li class="row rule">
              <div class="col-md-1"></div>
              <div class="col-md-2">
                <div class="icon game-elements"></div>
              </div>
              <div class="col-md-8">
                <h2 class="subtitle text-left text-uppercase">Game elements</h2>
                <p class="text-justify">
                  <strong>Game board</strong> – visualization of your "dialogue" with the robot, a map where the robot moves per your commands to the final point.<br>
                  <strong>Input field</strong> - there you write your commands.<br>
                  <strong>Available commands</strong> - blocked comments at the beginning of the code field.<br>
                  <strong>Console</strong> – there you can see your "dialogue" with the robot.<br>
                  <strong>Buttons</strong> – the sensei will provide help describing what button does what.
                </p>
              </div>
            </li>
            <li class="row rule">
              <div class="col-md-1"></div>
              <div class="col-md-2">
                <div class="icon single"></div>
              </div>
              <div class="col-md-8">
                <h2 class="subtitle text-left text-uppercase">Single-player mode</h2>
                <p class="text-justify">
                In this game mode you are going to go through a training course for non-programmers. It will teach you the basics of the game controls as well as the primitives of the programming language used in the game.
                </p>
                <p class="text-justify">
                At the most of the levels your main objective is to reach the end point which is the purple portal. Extra goals can be viewed in the game’s console.
Use commands commented in the input field to control the robot. Avoid being shot by the laser and falling in the holes. Collect gold and achieve other goals to get more points. The next level will only appear after successfully finishing the previous one.
                </p>
              </div>
            </li>
            <li class="row rule">
              <div class="col-md-1"></div>
              <div class="col-md-2">
                <div class="icon multi"></div>
              </div>
              <div class="col-md-8">
                <h2 class="subtitle text-left text-uppercase">Multiplayer mode</h2>
                <p class="text-justify">
                This mode is designed for more experienced players who either completed the basic course or know programming basic algorithms.
                </p>
                <p class="text-justify">
                You control one of the many robots placed in the procedurally-generated dungeon labyrinth. Your goal is to collect money bags and get points. Dying by any reason you lose points, while collecting bags you get them.
                </p>
                <p class="text-justify">
                Other players control other robots and they will try to beat you in this competition. Use commands commented in the input field to control the robot. Avoid being shot by the laser and falling in the holes.
                </p>
              </div>
            </li>
          </ul>
          <div class="row">
            <div class="col-md-4"></div>
            <div class="text-center col-md-4">
              <div class="action-link text-uppercase go-registration" >Go and outhink them all!<i class="fa fa-angle-right"></i></div>
            </div>
            <div class="col-md-4"></div>
          </div>
        </div>
      </section>
      <footer class="footer">
        <div class="container">
          <nav class="footer-nav">
            <ul class="footer-list inline">
              <li class="footer-item inline"><a href="https://epa.ms/dojo-habr" target="blank">About DOJO</a></li>
              <li class="footer-item inline"><a href="https://epa.ms/EPMDOJO" target="blank">DOJO KB</a></li>
              <li class="footer-item inline"><a href="https://epa.ms/DOJO-CHAT" target="blank">DOJO CHAT</a></li>
              <li class="footer-item inline"><a href="https://epa.ms/codenjoy-github" target="blank">Codenjoy on GitHub</a></li>
              <li class="footer-item inline"><a href="mailto:Oleksandr_Baglai@Epam.com" target="blank">Ask me anything</a></li>
            </ul>
      </nav>
        </div>
      </footer>
    </div>
    <div class="scroll-up" id="scrollup"><i class="fa fa-angle-up"></i></div>

  </body>
</html>