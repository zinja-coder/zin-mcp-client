.class public Lcom/badlogic/gdx/controllers/ControllerAdapter;
.super Ljava/lang/Object;
.source "ControllerAdapter.java"

# interfaces
.implements Lcom/badlogic/gdx/controllers/ControllerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accelerometerMoved(Lcom/badlogic/gdx/controllers/Controller;ILcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "accelerometerIndex"    # I
    .param p3, "value"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public axisMoved(Lcom/badlogic/gdx/controllers/Controller;IF)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "axisIndex"    # I
    .param p3, "value"    # F

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public buttonDown(Lcom/badlogic/gdx/controllers/Controller;I)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "buttonIndex"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public buttonUp(Lcom/badlogic/gdx/controllers/Controller;I)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "buttonIndex"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public connected(Lcom/badlogic/gdx/controllers/Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;

    .prologue
    .line 61
    return-void
.end method

.method public disconnected(Lcom/badlogic/gdx/controllers/Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;

    .prologue
    .line 65
    return-void
.end method

.method public povMoved(Lcom/badlogic/gdx/controllers/Controller;ILcom/badlogic/gdx/controllers/PovDirection;)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "povIndex"    # I
    .param p3, "value"    # Lcom/badlogic/gdx/controllers/PovDirection;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public xSliderMoved(Lcom/badlogic/gdx/controllers/Controller;IZ)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "sliderIndex"    # I
    .param p3, "value"    # Z

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public ySliderMoved(Lcom/badlogic/gdx/controllers/Controller;IZ)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "sliderIndex"    # I
    .param p3, "value"    # Z

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
