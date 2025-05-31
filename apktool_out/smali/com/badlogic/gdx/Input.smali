.class public interface abstract Lcom/badlogic/gdx/Input;
.super Ljava/lang/Object;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/Input$Orientation;,
        Lcom/badlogic/gdx/Input$Peripheral;,
        Lcom/badlogic/gdx/Input$Keys;,
        Lcom/badlogic/gdx/Input$Buttons;,
        Lcom/badlogic/gdx/Input$TextInputListener;
    }
.end annotation


# virtual methods
.method public abstract cancelVibrate()V
.end method

.method public abstract getAccelerometerX()F
.end method

.method public abstract getAccelerometerY()F
.end method

.method public abstract getAccelerometerZ()F
.end method

.method public abstract getAzimuth()F
.end method

.method public abstract getCurrentEventTime()J
.end method

.method public abstract getDeltaX()I
.end method

.method public abstract getDeltaX(I)I
.end method

.method public abstract getDeltaY()I
.end method

.method public abstract getDeltaY(I)I
.end method

.method public abstract getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
.end method

.method public abstract getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
.end method

.method public abstract getPitch()F
.end method

.method public abstract getRoll()F
.end method

.method public abstract getRotation()I
.end method

.method public abstract getRotationMatrix([F)V
.end method

.method public abstract getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getX()I
.end method

.method public abstract getX(I)I
.end method

.method public abstract getY()I
.end method

.method public abstract getY(I)I
.end method

.method public abstract isButtonPressed(I)Z
.end method

.method public abstract isCatchBackKey()Z
.end method

.method public abstract isCursorCatched()Z
.end method

.method public abstract isKeyJustPressed(I)Z
.end method

.method public abstract isKeyPressed(I)Z
.end method

.method public abstract isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
.end method

.method public abstract isTouched()Z
.end method

.method public abstract isTouched(I)Z
.end method

.method public abstract justTouched()Z
.end method

.method public abstract setCatchBackKey(Z)V
.end method

.method public abstract setCatchMenuKey(Z)V
.end method

.method public abstract setCursorCatched(Z)V
.end method

.method public abstract setCursorImage(Lcom/badlogic/gdx/graphics/Pixmap;II)V
.end method

.method public abstract setCursorPosition(II)V
.end method

.method public abstract setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
.end method

.method public abstract setOnscreenKeyboardVisible(Z)V
.end method

.method public abstract vibrate(I)V
.end method

.method public abstract vibrate([JI)V
.end method
