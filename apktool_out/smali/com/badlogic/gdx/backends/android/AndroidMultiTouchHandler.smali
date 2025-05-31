.class public Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;
.super Ljava/lang/Object;
.source "AndroidMultiTouchHandler.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(II)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "pointer"    # I

    .prologue
    .line 107
    const-string v0, ""

    .line 108
    .local v0, "actionStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 109
    const-string v0, "DOWN"

    .line 124
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMultiTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Android pointer id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 110
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 111
    const-string v0, "POINTER DOWN"

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 113
    const-string v0, "UP"

    goto :goto_0

    .line 114
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 115
    const-string v0, "POINTER UP"

    goto :goto_0

    .line 116
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 117
    const-string v0, "OUTSIDE"

    goto :goto_0

    .line 118
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 119
    const-string v0, "CANCEL"

    goto :goto_0

    .line 120
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 121
    const-string v0, "MOVE"

    goto :goto_0

    .line 123
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V
    .locals 3
    .param p1, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "pointer"    # I
    .param p6, "button"    # I
    .param p7, "timeStamp"    # J

    .prologue
    .line 137
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 138
    .local v0, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iput-wide p7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 139
    iput p5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    .line 140
    iput p3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 141
    iput p4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 142
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 143
    iput p6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->button:I

    .line 144
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method private toGdxButton(I)I
    .locals 3
    .param p1, "button"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 128
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 133
    :cond_1
    :goto_0
    return v0

    .line 129
    :cond_2
    if-eq p1, v1, :cond_1

    .line 130
    if-ne p1, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 131
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 132
    :cond_4
    const/16 v0, 0x10

    if-ne p1, v0, :cond_5

    move v0, v2

    goto :goto_0

    .line 133
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v2, v3, 0xff

    .line 33
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v24, v3, 0x8

    .line 34
    .local v24, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    .line 36
    .local v23, "pointerId":I
    const/4 v6, 0x0

    .local v6, "x":I
    const/4 v7, 0x0

    .line 37
    .local v7, "y":I
    const/4 v8, 0x0

    .line 38
    .local v8, "realPointerIndex":I
    const/4 v9, 0x0

    .line 40
    .local v9, "button":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 41
    .local v10, "timeStamp":J
    monitor-enter p2

    .line 42
    packed-switch v2, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    :try_start_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 104
    return-void

    .line 45
    :pswitch_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getFreePointerIndex()I

    move-result v8

    .line 46
    const/16 v3, 0x14

    if-ge v8, v3, :cond_0

    .line 47
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v23, v3, v8

    .line 48
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v6, v3

    .line 49
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v7, v3

    .line 50
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->toGdxButton(I)I

    move-result v9

    .line 51
    :cond_1
    const/4 v3, -0x1

    if-eq v9, v3, :cond_2

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    .line 52
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v6, v3, v8

    .line 53
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v7, v3, v8

    .line 54
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v4, 0x0

    aput v4, v3, v8

    .line 55
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v4, 0x0

    aput v4, v3, v8

    .line 56
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v4, v8

    .line 57
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aput v9, v3, v8

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 56
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 64
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v8

    .line 65
    const/4 v3, -0x1

    if-eq v8, v3, :cond_0

    .line 66
    const/16 v3, 0x14

    if-ge v8, v3, :cond_0

    .line 67
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    const/4 v4, -0x1

    aput v4, v3, v8

    .line 68
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v6, v3

    .line 69
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v7, v3

    .line 70
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v9, v3, v8

    .line 71
    const/4 v3, -0x1

    if-eq v9, v3, :cond_4

    const/4 v5, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    .line 72
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v6, v3, v8

    .line 73
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v7, v3, v8

    .line 74
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v4, 0x0

    aput v4, v3, v8

    .line 75
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v4, 0x0

    aput v4, v3, v8

    .line 76
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v8

    .line 77
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    const/4 v4, 0x0

    aput v4, v3, v8

    goto/16 :goto_0

    .line 81
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .line 82
    .local v22, "pointerCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 83
    move/from16 v24, v12

    .line 84
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    .line 85
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v6, v3

    .line 86
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v7, v3

    .line 87
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v8

    .line 88
    const/4 v3, -0x1

    if-ne v8, v3, :cond_5

    .line 82
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 89
    :cond_5
    const/16 v3, 0x14

    if-ge v8, v3, :cond_0

    .line 90
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v9, v3, v8

    .line 91
    const/4 v3, -0x1

    if-eq v9, v3, :cond_6

    .line 92
    const/4 v5, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V

    .line 95
    :goto_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v4, v4, v8

    sub-int v4, v6, v4

    aput v4, v3, v8

    .line 96
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v4, v4, v8

    sub-int v4, v7, v4

    aput v4, v3, v8

    .line 97
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v6, v3, v8

    .line 98
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v7, v3, v8

    goto :goto_3

    .line 94
    :cond_6
    const/4 v15, 0x4

    const/16 v19, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportsMultitouch(Landroid/content/Context;)Z
    .locals 2
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
