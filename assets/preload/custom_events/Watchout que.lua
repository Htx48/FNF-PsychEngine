function onCreate()

		makeAnimatedLuaSprite('anti-lag','Watchout', -150, 250)
end

function onEvent(n,v1,v2)

	if n == 'Watchout que' then

		makeAnimatedLuaSprite('watchout','Watchout', -150, 250)
		addAnimationByPrefix('watchout','idle','Advertencia',24,false)
		scaleObject('watchout', 4.0, 4.0);
		playSound('watchout', 0.50) --play sounds augh
		setObjectCamera('watchout', 'hud')
              addLuaSprite('watchout', true);
	      setLuaSpriteScrollFactor('watchout',0,0)
	end
end
