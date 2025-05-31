.class public interface abstract Lcom/badlogic/gdx/controllers/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# virtual methods
.method public abstract addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
.end method

.method public abstract getAccelerometer(I)Lcom/badlogic/gdx/math/Vector3;
.end method

.method public abstract getAxis(I)F
.end method

.method public abstract getButton(I)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPov(I)Lcom/badlogic/gdx/controllers/PovDirection;
.end method

.method public abstract getSliderX(I)Z
.end method

.method public abstract getSliderY(I)Z
.end method

.method public abstract removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
.end method

.method public abstract setAccelerometerSensitivity(F)V
.end method
