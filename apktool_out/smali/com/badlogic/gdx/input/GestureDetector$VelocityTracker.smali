.class Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VelocityTracker"
.end annotation


# instance fields
.field deltaX:F

.field deltaY:F

.field lastTime:J

.field lastX:F

.field lastY:F

.field meanTime:[J

.field meanX:[F

.field meanY:[F

.field numSamples:I

.field sampleSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/16 v0, 0xa

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    .line 376
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    .line 377
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    .line 378
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    return-void
.end method

.method private getAverage([FI)F
    .locals 3
    .param p1, "values"    # [F
    .param p2, "numSamples"    # I

    .prologue
    .line 424
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 427
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_0
    int-to-float v2, p2

    div-float v2, v1, v2

    return v2
.end method

.method private getAverage([JI)J
    .locals 6
    .param p1, "values"    # [J
    .param p2, "numSamples"    # I

    .prologue
    .line 433
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 434
    const-wide/16 v2, 0x0

    .line 435
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 436
    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    if-nez p2, :cond_1

    const-wide/16 v4, 0x0

    .line 439
    :goto_1
    return-wide v4

    :cond_1
    int-to-long v4, p2

    div-long v4, v2, v4

    goto :goto_1
.end method

.method private getSum([FI)F
    .locals 3
    .param p1, "values"    # [F
    .param p2, "numSamples"    # I

    .prologue
    .line 443
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 446
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    .line 449
    .end local v1    # "sum":F
    :cond_1
    return v1
.end method


# virtual methods
.method public getVelocityX()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v1

    .line 411
    .local v1, "meanX":F
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v4

    long-to-float v3, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float v0, v3, v4

    .line 412
    .local v0, "meanTime":F
    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    .line 413
    :goto_0
    return v2

    :cond_0
    div-float v2, v1, v0

    goto :goto_0
.end method

.method public getVelocityY()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v1

    .line 418
    .local v1, "meanY":F
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v4

    long-to-float v3, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float v0, v3, v4

    .line 419
    .local v0, "meanTime":F
    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    .line 420
    :goto_0
    return v2

    :cond_0
    div-float v2, v1, v0

    goto :goto_0
.end method

.method public start(FFJ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "timeStamp"    # J

    .prologue
    const/4 v4, 0x0

    .line 381
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 382
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 383
    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 384
    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 385
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    if-ge v0, v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    aput v4, v1, v0

    .line 388
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    aput v4, v1, v0

    .line 389
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 392
    return-void
.end method

.method public update(FFJ)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "timeStamp"    # J

    .prologue
    .line 395
    move-wide v0, p3

    .line 396
    .local v0, "currTime":J
    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    sub-float v5, p1, v5

    iput v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 397
    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    sub-float v5, p2, v5

    iput v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 398
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 399
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 400
    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v2, v0, v6

    .line 401
    .local v2, "deltaTime":J
    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 402
    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    iget v6, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    rem-int v4, v5, v6

    .line 403
    .local v4, "index":I
    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v6, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    aput v6, v5, v4

    .line 404
    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v6, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    aput v6, v5, v4

    .line 405
    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    aput-wide v2, v5, v4

    .line 406
    iget v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 407
    return-void
.end method
