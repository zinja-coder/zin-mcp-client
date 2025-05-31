.class public Lcom/badlogic/gdx/InputProcessorQueue;
.super Ljava/lang/Object;
.source "InputProcessorQueue.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# static fields
.field private static final KEY_DOWN:I = 0x0

.field private static final KEY_TYPED:I = 0x2

.field private static final KEY_UP:I = 0x1

.field private static final MOUSE_MOVED:I = 0x6

.field private static final SCROLLED:I = 0x7

.field private static final TOUCH_DOWN:I = 0x3

.field private static final TOUCH_DRAGGED:I = 0x5

.field private static final TOUCH_UP:I = 0x4


# instance fields
.field private currentEventTime:J

.field private final processingQueue:Lcom/badlogic/gdx/utils/IntArray;

.field private processor:Lcom/badlogic/gdx/InputProcessor;

.field private final queue:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 44
    return-void
.end method

.method private queueTime()V
    .locals 6

    .prologue
    .line 97
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 98
    .local v0, "time":J
    iget-object v2, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 99
    iget-object v2, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public drain()V
    .locals 10

    .prologue
    .line 55
    iget-object v3, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processingQueue:Lcom/badlogic/gdx/utils/IntArray;

    .line 56
    .local v3, "q":Lcom/badlogic/gdx/utils/IntArray;
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-nez v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 59
    monitor-exit p0

    .line 94
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;)V

    .line 62
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v2, "n":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 65
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->currentEventTime:J

    .line 66
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_2
    move v1, v0

    .line 90
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 63
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 68
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    :pswitch_0
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    move v0, v1

    .line 69
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 71
    :pswitch_1
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    move v0, v1

    .line 72
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 74
    :pswitch_2
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    int-to-char v5, v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    move v0, v1

    .line 75
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .line 77
    :pswitch_3
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    goto :goto_2

    .line 80
    :pswitch_4
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_2

    .line 83
    :pswitch_5
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    move v0, v1

    .line 84
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_2

    .line 86
    :pswitch_6
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    goto/16 :goto_2

    .line 89
    :pswitch_7
    iget-object v4, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/InputProcessor;->scrolled(I)Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_2

    .line 93
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentEventTime()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->currentEventTime:J

    return-wide v0
.end method

.method public getProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public declared-synchronized keyDown(I)Z
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return v2

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keyTyped(C)Z
    .locals 2
    .param p1, "character"    # C

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keyUp(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mouseMoved(II)Z
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scrolled(I)Z
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/badlogic/gdx/InputProcessorQueue;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 48
    return-void
.end method

.method public declared-synchronized touchDown(IIII)Z
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized touchDragged(III)Z
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized touchUp(IIII)Z
    .locals 2
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/InputProcessorQueue;->queueTime()V

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/InputProcessorQueue;->queue:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
