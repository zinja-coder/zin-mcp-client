.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "DragScrollListener.java"


# instance fields
.field interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field maxSpeed:F

.field minSpeed:F

.field rampTime:J

.field private scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field private scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

.field private scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

.field startTime:J

.field tickSecs:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 2
    .param p1, "scroll"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    .line 30
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 31
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    const/high16 v0, 0x42960000    # 75.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    .line 32
    const-wide/16 v0, 0x6d6

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 47
    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scroll:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    cmpg-float v0, p3, v1

    if-gez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    goto :goto_0
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollUp:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->scrollDown:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 85
    return-void
.end method

.method getScrollPixels()F
    .locals 8

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->startTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0
.end method

.method public setup(FFFF)V
    .locals 2
    .param p1, "minSpeedPixels"    # F
    .param p2, "maxSpeedPixels"    # F
    .param p3, "tickSecs"    # F
    .param p4, "rampSecs"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->minSpeed:F

    .line 51
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->maxSpeed:F

    .line 52
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->tickSecs:F

    .line 53
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p4

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragScrollListener;->rampTime:J

    .line 54
    return-void
.end method
