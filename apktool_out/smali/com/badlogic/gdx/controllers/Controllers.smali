.class public Lcom/badlogic/gdx/controllers/Controllers;
.super Ljava/lang/Object;
.source "Controllers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Controllers"

.field static final managers:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/controllers/ControllerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 51
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->initialize()V

    .line 52
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->getManager()Lcom/badlogic/gdx/controllers/ControllerManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/controllers/ControllerManager;->addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V

    .line 53
    return-void
.end method

.method public static clearListeners()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->initialize()V

    .line 65
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->getManager()Lcom/badlogic/gdx/controllers/ControllerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/controllers/ControllerManager;->clearListeners()V

    .line 66
    return-void
.end method

.method public static getControllers()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/Controller;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->initialize()V

    .line 44
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->getManager()Lcom/badlogic/gdx/controllers/ControllerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/controllers/ControllerManager;->getControllers()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method private static getManager()Lcom/badlogic/gdx/controllers/ControllerManager;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/controllers/ControllerManager;

    return-object v0
.end method

.method private static initialize()V
    .locals 10

    .prologue
    .line 73
    sget-object v6, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    .local v0, "app":Lcom/badlogic/gdx/Application;
    .local v1, "className":Ljava/lang/String;
    .local v4, "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    .local v5, "type":Lcom/badlogic/gdx/Application$ApplicationType;
    :goto_0
    return-void

    .line 75
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    .end local v5    # "type":Lcom/badlogic/gdx/Application$ApplicationType;
    :cond_0
    const/4 v1, 0x0

    .line 76
    .restart local v1    # "className":Ljava/lang/String;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v6}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v5

    .line 77
    .restart local v5    # "type":Lcom/badlogic/gdx/Application$ApplicationType;
    const/4 v4, 0x0

    .line 79
    .restart local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v5, v6, :cond_3

    .line 80
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v6}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v6

    const/16 v7, 0xc

    if-lt v6, v7, :cond_2

    .line 81
    const-string v1, "com.badlogic.gdx.controllers.android.AndroidControllers"

    .line 95
    :goto_1
    if-nez v4, :cond_1

    .line 97
    :try_start_0
    invoke-static {v1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 98
    .local v2, "controllerManagerClass":Ljava/lang/Class;
    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    check-cast v4, Lcom/badlogic/gdx/controllers/ControllerManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2    # "controllerManagerClass":Ljava/lang/Class;
    .restart local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    :cond_1
    sget-object v6, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 106
    .restart local v0    # "app":Lcom/badlogic/gdx/Application;
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v7, Lcom/badlogic/gdx/controllers/Controllers$1;

    invoke-direct {v7, v0}, Lcom/badlogic/gdx/controllers/Controllers$1;-><init>(Lcom/badlogic/gdx/Application;)V

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 123
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Controllers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "added manager for application, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/controllers/Controllers;->managers:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v9, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " managers active"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_2
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Controllers"

    const-string v8, "No controller manager is available for Android versions < API level 12"

    invoke-interface {v6, v7, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v4, Lcom/badlogic/gdx/controllers/ControllerManagerStub;

    .end local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    invoke-direct {v4}, Lcom/badlogic/gdx/controllers/ControllerManagerStub;-><init>()V

    .restart local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    goto :goto_1

    .line 86
    :cond_3
    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v5, v6, :cond_4

    .line 87
    const-string v1, "com.badlogic.gdx.controllers.desktop.DesktopControllerManager"

    goto :goto_1

    .line 88
    :cond_4
    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v5, v6, :cond_5

    .line 89
    const-string v1, "com.badlogic.gdx.controllers.gwt.GwtControllers"

    goto :goto_1

    .line 91
    :cond_5
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Controllers"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No controller manager is available for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v9}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v4, Lcom/badlogic/gdx/controllers/ControllerManagerStub;

    .end local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    invoke-direct {v4}, Lcom/badlogic/gdx/controllers/ControllerManagerStub;-><init>()V

    .restart local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    goto/16 :goto_1

    .line 99
    .end local v4    # "manager":Lcom/badlogic/gdx/controllers/ControllerManager;
    :catch_0
    move-exception v3

    .line 100
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating controller manager: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 58
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->initialize()V

    .line 59
    invoke-static {}, Lcom/badlogic/gdx/controllers/Controllers;->getManager()Lcom/badlogic/gdx/controllers/ControllerManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/controllers/ControllerManager;->removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V

    .line 60
    return-void
.end method
