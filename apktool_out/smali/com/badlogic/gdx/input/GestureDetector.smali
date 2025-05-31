.class public Lcom/badlogic/gdx/input/GestureDetector;
.super Lcom/badlogic/gdx/InputAdapter;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private gestureStartTime:J

.field private inTapSquare:Z

.field private final initialPointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final initialPointer2:Lcom/badlogic/gdx/math/Vector2;

.field private lastTapButton:I

.field private lastTapPointer:I

.field private lastTapTime:J

.field private lastTapX:F

.field private lastTapY:F

.field final listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

.field longPressFired:Z

.field private longPressSeconds:F

.field private final longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

.field private maxFlingDelay:J

.field private panning:Z

.field private pinching:Z

.field pointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer2:Lcom/badlogic/gdx/math/Vector2;

.field private tapCount:I

.field private tapCountInterval:J

.field private tapSquareCenterX:F

.field private tapSquareCenterY:F

.field private tapSquareSize:F

.field private final tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;


# direct methods
.method public constructor <init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 3
    .param p1, "halfTapSquareSize"    # F
    .param p2, "tapCountInterval"    # F
    .param p3, "longPressDuration"    # F
    .param p4, "maxFlingDelay"    # F
    .param p5, "listener"    # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .prologue
    const v2, 0x4e6e6b28    # 1.0E9f

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-direct {v0}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/GestureDetector$1;-><init>(Lcom/badlogic/gdx/input/GestureDetector;)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 79
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    .line 80
    mul-float v0, p2, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    .line 81
    iput p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 82
    mul-float v0, p4, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    .line 83
    iput-object p5, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .prologue
    .line 66
    const/high16 v1, 0x41a00000    # 20.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3e19999a    # 0.15f

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 67
    return-void
.end method

.method private isWithinTapSquare(FFFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 256
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 231
    return-void
.end method

.method public invalidateTapSquare()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 262
    return-void
.end method

.method public isLongPressed()Z
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/GestureDetector;->isLongPressed(F)Z

    move-result v0

    return v0
.end method

.method public isLongPressed(F)Z
    .locals 6
    .param p1, "duration"    # F

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    sub-long/2addr v2, v4

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v1, p1

    float-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanning()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 251
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 252
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 253
    return-void
.end method

.method public setLongPressSeconds(F)V
    .locals 0
    .param p1, "longPressSeconds"    # F

    .prologue
    .line 274
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 275
    return-void
.end method

.method public setMaxFlingDelay(J)V
    .locals 1
    .param p1, "maxFlingDelay"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    .line 279
    return-void
.end method

.method public setTapCountInterval(F)V
    .locals 2
    .param p1, "tapCountInterval"    # F

    .prologue
    .line 270
    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    .line 271
    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0
    .param p1, "halfTapSquareSize"    # F

    .prologue
    .line 265
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    .line 266
    return-void
.end method

.method public touchDown(FFII)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 92
    if-le p3, v4, :cond_0

    .line 123
    :goto_0
    return v0

    .line 94
    :cond_0
    if-nez p3, :cond_3

    .line 95
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 96
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 97
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 98
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 101
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 123
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->touchDown(FFII)Z

    move-result v0

    goto :goto_0

    .line 107
    :cond_2
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 108
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 109
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 110
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:F

    .line 111
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:F

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_1

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 117
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 118
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    goto :goto_1
.end method

.method public touchDown(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 88
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    move-result v0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    if-le p3, v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-nez v3, :cond_0

    .line 135
    if-nez p3, :cond_3

    .line 136
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 141
    :goto_1
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v3, :cond_4

    .line 142
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    .line 144
    .local v0, "result":Z
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->zoom(FF)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 138
    .end local v0    # "result":Z
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 153
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:F

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapSquare(FFFF)Z

    move-result v3

    if-nez v3, :cond_5

    .line 154
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 155
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 159
    :cond_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-nez v3, :cond_0

    .line 160
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 161
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v2, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v3, v3, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pan(FFFF)Z

    move-result v1

    goto :goto_0
.end method

.method public touchDragged(III)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 128
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    move-result v0

    return v0
.end method

.method public touchUp(FFII)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 173
    const/4 v4, 0x1

    if-le p3, v4, :cond_1

    const/4 v0, 0x0

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:F

    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:F

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapSquare(FFFF)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 178
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 179
    .local v1, "wasPanning":Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 181
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 182
    iget-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_3
    iget-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v4, :cond_6

    .line 186
    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapButton:I

    if-ne v4, p4, :cond_4

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapPointer:I

    if-ne v4, p3, :cond_4

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountInterval:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapX:F

    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapY:F

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector;->isWithinTapSquare(FFFF)Z

    move-result v4

    if-nez v4, :cond_5

    .line 187
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 188
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 189
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTime:J

    .line 190
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapX:F

    .line 191
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapY:F

    .line 192
    iput p4, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapButton:I

    .line 193
    iput p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapPointer:I

    .line 194
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 195
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    invoke-interface {v4, p1, p2, v5, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->tap(FFII)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_6
    iget-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v4, :cond_8

    .line 200
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 201
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 203
    if-nez p3, :cond_7

    .line 205
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v7}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 210
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 208
    :cond_7
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v7}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    goto :goto_1

    .line 214
    :cond_8
    const/4 v0, 0x0

    .line 215
    .local v0, "handled":Z
    if-eqz v1, :cond_9

    iget-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->panStop(FFII)Z

    move-result v0

    .line 218
    :cond_9
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 219
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    .line 220
    .local v2, "time":J
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v4, v4, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelay:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 222
    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityX()F

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v6}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityY()F

    move-result v6

    invoke-interface {v4, v5, v6, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->fling(FFI)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x1

    :goto_2
    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public touchUp(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 169
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    move-result v0

    return v0
.end method
