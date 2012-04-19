// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require soundmanager2
//= require_tree .


function Player() {
  	var self = this;
  	var pl = this;
  	var sm = soundManager; // soundManager instance
  	SC.initialize({ client_id: "cf83cbe2fc093eb561ed68e211b0d5fe"});
    SC.get("/users/radioguidance/tracks", {limit: 2}, function(tracks){
		so1=SC.stream(tracks[0].uri);
		so2=SC.stream(tracks[1].uri);
		so1.autoLoad = true;
		so1.autoPlay = true;
		so2.autoLoad = true;
		so2.autoPlay = true;
		so1.play();
		//so2.play();
	});
	
	/*SC.stream("/users/radioguidance/tracks", {limit: 1}, function(tracks){
			
	
			var sURL = tracks[0].stream_url;
				console.debug("url:"+sURL);
				
				if (sm.canPlayURL(sURL)) {
					console.debug("Can Play!");
				 sm.createSound({
								 id: 'mySound', 
								 url: tracks[0].stream_url, 
								 volume: 50,
								 autoPlay: true,
								 stream: true
								
							});
				}
				else {console.debug("Can't Play")}
				//sm.createSound('id2',tracks[2]);
				//sm.createSound('id3',tracks[3]);
	
	});*/
	
	//sm.play('mySound');
	//sm.play('id2');
	//sm.play('id3');
}


$(function() {
 
  soundManager.url = '/swf';
  soundManager.flashVersion = 9; 
  soundManager.useFlashBlock = false; 
  
	  
	soundManager.onready(function() {
	  // soundManager.createSound() etc. may now be called
	  myPlayer = new Player();
	});

});





