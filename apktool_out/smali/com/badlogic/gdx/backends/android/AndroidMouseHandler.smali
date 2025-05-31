.class public Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;
.super Ljava/lang/Object;
.source "AndroidMouseHandler.java"


# instance fields
.field private deltaX:I

.field private deltaY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    return-void
.end method

.method private logAction(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 67
    const-string v0, ""

    .line 68
    .local v0, "actionStr":Ljava/lang/String;
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 69
    const-string v0, "HOVER_ENTER"

    .line 78
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMouseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 71
    const-string v0, "HOVER_MOVE"

    goto :goto_0

    .line 72
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 73
    const-string v0, "HOVER_EXIT"

    goto :goto_0

    .line 74
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 75
    const-string v0, "SCROLL"

    goto :goto_0

    .line 77
    :cond_3
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

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    .locals 2
    .param p1, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "scrollAmount"    # I
    .param p6, "timeStamp"    # J

    .prologue
    .line 82
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 83
    .local v0, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iput-wide p6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 84
    iput p3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 85
    iput p4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 86
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 87
    iput p5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->scrollAmount:I

    .line 88
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;

    .prologue
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 63
    :goto_0
    return v2

    .line 38
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v18, v0

    .line 40
    .local v18, "action":I
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v6, 0x0

    .line 41
    .local v6, "y":I
    const/4 v15, 0x0

    .line 43
    .local v15, "scrollAmount":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 44
    .local v8, "timeStamp":J
    monitor-enter p2

    .line 45
    packed-switch v18, :pswitch_data_0

    .line 61
    :cond_1
    :goto_1
    :try_start_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 63
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :pswitch_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v5, v2

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v6, v2

    .line 49
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    if-ne v5, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    if-eq v6, v2, :cond_1

    .line 50
    :cond_2
    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V

    .line 51
    move-object/from16 v0, p0

    iput v5, v0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaX:I

    .line 52
    move-object/from16 v0, p0

    iput v6, v0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->deltaY:I

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 57
    :pswitch_1
    const/16 v2, 0x9

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-int v15, v2

    .line 58
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
