.class public Lcom/badlogic/gdx/controllers/android/AndroidControllers;
.super Ljava/lang/Object;
.source "AndroidControllers.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;
.implements Lcom/badlogic/gdx/controllers/ControllerManager;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnGenericMotionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidControllers"


# instance fields
.field private final controllerMap:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<",
            "Lcom/badlogic/gdx/controllers/android/AndroidController;",
            ">;"
        }
    .end annotation
.end field

.field private final controllers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private final eventPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v2, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    .line 41
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllers:Lcom/badlogic/gdx/utils/Array;

    .line 42
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->listeners:Lcom/badlogic/gdx/utils/Array;

    .line 43
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    .line 44
    new-instance v2, Lcom/badlogic/gdx/controllers/android/AndroidControllers$1;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/controllers/android/AndroidControllers$1;-><init>(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)V

    iput-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    .line 52
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 53
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->gatherControllers(Z)V

    .line 54
    invoke-direct {p0}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->setupEventQueue()V

    .line 55
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->addKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->addGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 59
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 61
    :try_start_0
    const-string v0, "com.badlogic.gdx.controllers.android.ControllerLifeCycleListener"

    .line 62
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidControllers"

    const-string v4, "Couldn\'t register controller life-cycle listener"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method static synthetic access$100(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllers:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method static synthetic access$200(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->listeners:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method static synthetic access$300(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Pool;
    .locals 1
    .param p0, "x0"    # Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method

.method private gatherControllers(Z)V
    .locals 9
    .param p1, "sendEvent"    # Z

    .prologue
    .line 187
    new-instance v7, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    .line 188
    .local v7, "removedControllers":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<Lcom/badlogic/gdx/controllers/android/AndroidController;>;"
    iget-object v8, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/IntMap;->putAll(Lcom/badlogic/gdx/utils/IntMap;)V

    .line 190
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget v3, v0, v5

    .line 191
    .local v3, "deviceId":I
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 192
    .local v2, "device":Landroid/view/InputDevice;
    iget-object v8, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 193
    .local v1, "controller":Lcom/badlogic/gdx/controllers/android/AndroidController;
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    .line 190
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->addController(IZ)V

    goto :goto_1

    .line 200
    .end local v1    # "controller":Lcom/badlogic/gdx/controllers/android/AndroidController;
    .end local v2    # "device":Landroid/view/InputDevice;
    .end local v3    # "deviceId":I
    :cond_1
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 201
    .local v4, "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<Lcom/badlogic/gdx/controllers/android/AndroidController;>;"
    iget v8, v4, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->removeController(I)V

    goto :goto_2

    .line 203
    .end local v4    # "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<Lcom/badlogic/gdx/controllers/android/AndroidController;>;"
    :cond_2
    return-void
.end method

.method private isController(Landroid/view/InputDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupEventQueue()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;-><init>(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->run()V

    .line 128
    return-void
.end method


# virtual methods
.method protected addController(IZ)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "sendEvent"    # Z

    .prologue
    .line 206
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 207
    .local v1, "device":Landroid/view/InputDevice;
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->isController(Landroid/view/InputDevice;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-direct {v0, p1, v3}, Lcom/badlogic/gdx/controllers/android/AndroidController;-><init>(ILjava/lang/String;)V

    .line 210
    .local v0, "controller":Lcom/badlogic/gdx/controllers/android/AndroidController;
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v4, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 211
    if-eqz p2, :cond_1

    .line 212
    iget-object v5, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v5

    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    .line 214
    .local v2, "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    const/4 v4, 0x4

    iput v4, v2, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->type:I

    .line 215
    iput-object v0, v2, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 216
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 217
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v2    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    :goto_1
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AndroidControllers"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added controller \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 219
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearListeners()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->listeners:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 279
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public getControllers()Lcom/badlogic/gdx/utils/Array;
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
    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllers:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    if-nez v10, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v9

    .line 133
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 134
    .local v4, "controller":Lcom/badlogic/gdx/controllers/android/AndroidController;
    if-eqz v4, :cond_0

    .line 135
    iget-object v10, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v10

    .line 136
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    .line 137
    .local v6, "historySize":I
    const/4 v2, 0x0

    .line 138
    .local v2, "axisIndex":I
    iget-object v0, v4, Lcom/badlogic/gdx/controllers/android/AndroidController;->axesIds:[I

    .local v0, "arr$":[I
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget v1, v0, v7

    .line 139
    .local v1, "axisId":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 140
    .local v3, "axisValue":F
    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getAxis(I)F

    move-result v9

    cmpl-float v9, v9, v3

    if-nez v9, :cond_2

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 138
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 144
    :cond_2
    iget-object v9, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    .line 145
    .local v5, "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    const/4 v9, 0x2

    iput v9, v5, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->type:I

    .line 146
    iput-object v4, v5, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 147
    iput v2, v5, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    .line 148
    iput v3, v5, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->axisValue:F

    .line 149
    iget-object v9, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    .end local v1    # "axisId":I
    .end local v3    # "axisValue":F
    .end local v5    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    :cond_3
    monitor-exit v10

    .line 153
    const/4 v9, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "arr$":[I
    .end local v2    # "axisIndex":I
    .end local v6    # "historySize":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 161
    .local v0, "controller":Lcom/badlogic/gdx/controllers/android/AndroidController;
    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getButton(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v4

    .line 166
    :try_start_0
    iget-object v5, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    .line 167
    .local v1, "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    iput-object v0, v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 168
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 169
    const/4 v5, 0x0

    iput v5, v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->type:I

    .line 173
    :goto_1
    iput p2, v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    .line 174
    iget-object v5, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 175
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const/4 v4, 0x4

    if-ne p2, v4, :cond_0

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->isCatchBackKey()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 177
    goto :goto_0

    .line 171
    :cond_2
    const/4 v5, 0x1

    :try_start_1
    iput v5, v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->type:I

    goto :goto_1

    .line 175
    .end local v1    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    move v2, v3

    .line 181
    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 262
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidControllers"

    const-string v2, "controllers paused"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected removeController(I)V
    .locals 6
    .param p1, "deviceId"    # I

    .prologue
    .line 225
    iget-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->controllerMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 226
    .local v0, "controller":Lcom/badlogic/gdx/controllers/android/AndroidController;
    if-eqz v0, :cond_0

    .line 227
    iget-object v3, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    .line 229
    .local v1, "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    const/4 v2, 0x5

    iput v2, v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->type:I

    .line 230
    iput-object v0, v1, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    .line 231
    iget-object v2, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 232
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidControllers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removed controller \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v1    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    :cond_0
    return-void

    .line 232
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->eventQueue:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->listeners:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->gatherControllers(Z)V

    .line 268
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidControllers"

    const-string v2, "controllers resumed"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method
