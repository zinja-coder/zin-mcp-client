.class public Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;
.super Ljava/lang/Object;
.source "ControllerLifeCycleListener.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ControllerLifeCycleListener"


# instance fields
.field private final controllers:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

.field private final inputManager:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)V
    .locals 2
    .param p1, "controllers"    # Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->controllers:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    .line 40
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    check-cast v0, Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->inputManager:Landroid/hardware/input/InputManager;

    .line 41
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->inputManager:Landroid/hardware/input/InputManager;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->controllers:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->addController(IZ)V

    .line 60
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ControllerLifeCycleListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->controllers:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->removeController(I)V

    .line 66
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ControllerLifeCycleListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 54
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ControllerLifeCycleListener"

    const-string v2, "controller life cycle listener paused"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/controllers/android/ControllerLifeCycleListener;->inputManager:Landroid/hardware/input/InputManager;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 48
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "ControllerLifeCycleListener"

    const-string v2, "controller life cycle listener resumed"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
