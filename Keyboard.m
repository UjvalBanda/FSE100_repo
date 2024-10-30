global key
InitKeyboard();

motorSpeed = 1500;

while true
    pause(0.05);
    switch key
        case 'uparrow'
            disp ('Up Arrow Pressed');
            brick.MoveMotor('AB', motorSpeed);
            pause(0.1);
            brick.StopMotor('AB',-motorSpeed);

        case 'downarrow'
            disp ('Down Arrow Pressed');
            brick.MoveMotor('AB', -motorSpeed);
            pause(0.1);
            brick.StopMotor('AB',-motorSpeed);
        
        case 'leftarrow'
            brick.MoveMotor('A', motorSpeed);
            pause(0.1);
            

        case 'rightarrow'
            brick.MoveMotor('B', motorSpeed);
            pause(0.1);
            
        
        case 0     
            disp ('No key Pressed');
            brick.StopMotor('AB',-motorSpeed);
            brick.StopMotor('AB',motorSpeed);
            brick.StopMotor('B', -motorSpeed);
             brick.StopMotor('A', -motorSpeed);

        case 'q'
            break;

    end

end
CloseKeyboard();


