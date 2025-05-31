.class public Lcom/badlogic/gdx/controllers/android/AndroidController;
.super Ljava/lang/Object;
.source "AndroidController.java"

# interfaces
.implements Lcom/badlogic/gdx/controllers/Controller;


# instance fields
.field private attached:Z

.field protected final axes:[F

.field protected final axesIds:[I

.field protected final buttons:Lcom/badlogic/gdx/utils/IntIntMap;

.field private final deviceId:I

.field private final listeners:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/ControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v6, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v6, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->buttons:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 39
    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v6, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->listeners:Lcom/badlogic/gdx/utils/Array;

    .line 42
    iput p1, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->deviceId:I

    .line 43
    iput-object p2, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->name:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 46
    .local v0, "device":Landroid/view/InputDevice;
    const/4 v4, 0x0

    .line 47
    .local v4, "numAxes":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice$MotionRange;

    .line 48
    .local v5, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    .end local v5    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_1
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->axesIds:[I

    .line 54
    new-array v6, v4, [F

    iput-object v6, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->axes:[F

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice$MotionRange;

    .line 57
    .restart local v5    # "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    .line 58
    iget-object v6, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->axesIds:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v7

    aput v7, v6, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 61
    .end local v5    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public getAccelerometer(I)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "accelerometerIndex"    # I

    .prologue
    .line 87
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getAxis(I)F
    .locals 1
    .param p1, "axisIndex"    # I

    .prologue
    .line 115
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->axes:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->axes:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getButton(I)Z
    .locals 1
    .param p1, "buttonIndex"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->buttons:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->deviceId:I

    return v0
.end method

.method public getListeners()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/ControllerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->listeners:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPov(I)Lcom/badlogic/gdx/controllers/PovDirection;
    .locals 1
    .param p1, "povIndex"    # I

    .prologue
    .line 121
    sget-object v0, Lcom/badlogic/gdx/controllers/PovDirection;->center:Lcom/badlogic/gdx/controllers/PovDirection;

    return-object v0
.end method

.method public getSliderX(I)Z
    .locals 1
    .param p1, "sliderIndex"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getSliderY(I)Z
    .locals 1
    .param p1, "sliderIndex"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->attached:Z

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->listeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 102
    return-void
.end method

.method public setAccelerometerSensitivity(F)V
    .locals 0
    .param p1, "sensitivity"    # F

    .prologue
    .line 92
    return-void
.end method

.method public setAttached(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/badlogic/gdx/controllers/android/AndroidController;->attached:Z

    .line 69
    return-void
.end method
