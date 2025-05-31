.class public abstract Laurelienribon/tweenengine/BaseTween;
.super Ljava/lang/Object;
.source "BaseTween.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private callback:Laurelienribon/tweenengine/TweenCallback;

.field private callbackTriggers:I

.field private currentTime:F

.field protected delay:F

.field private deltaTime:F

.field protected duration:F

.field isAutoRemoveEnabled:Z

.field isAutoStartEnabled:Z

.field private isFinished:Z

.field private isInitialized:Z

.field private isIterationStep:Z

.field private isKilled:Z

.field private isPaused:Z

.field private isStarted:Z

.field private isYoyo:Z

.field private repeatCnt:I

.field private repeatDelay:F

.field private step:I

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v3, 0x1

    .line 433
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v0, v1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->initializeOverride()V

    .line 435
    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    .line 436
    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 438
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 440
    invoke-virtual {p0, v3}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 441
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 443
    :cond_0
    return-void
.end method

.method private testCompletion()V
    .locals 2

    .prologue
    .line 541
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    .line 542
    return-void

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private testRelaunch()V
    .locals 5

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_2

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_2

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v1, :cond_2

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    .line 447
    sget-boolean v1, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 448
    :cond_0
    iput-boolean v4, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 449
    const/4 v1, 0x0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 450
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v3, v1

    .line 451
    .local v0, "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 452
    iput v3, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 453
    invoke-virtual {p0, v4}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 454
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 455
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 468
    .end local v0    # "delta":F
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 458
    sget-boolean v1, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 459
    :cond_3
    iput-boolean v4, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 460
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 461
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v3, v1

    .line 462
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 463
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 464
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 465
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 466
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    goto :goto_0
.end method

.method private updateStep()V
    .locals 7

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 471
    :goto_0
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 472
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    .line 473
    iput-boolean v6, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 474
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 476
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v4, v1

    .line 477
    .local v0, "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 478
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 480
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    .line 481
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 482
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    goto :goto_1

    .line 484
    .end local v0    # "delta":F
    :cond_1
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_3

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 485
    iput-boolean v6, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 486
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 488
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v1, v2

    .line 489
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 490
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 492
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    .line 493
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 494
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    goto/16 :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    goto :goto_2

    .line 496
    .end local v0    # "delta":F
    :cond_3
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_5

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 497
    iput-boolean v5, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 498
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 500
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v4, v1

    .line 501
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 502
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 504
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 505
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 507
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v1, :cond_4

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_4

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto/16 :goto_0

    .line 508
    :cond_4
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    goto/16 :goto_0

    .line 510
    .end local v0    # "delta":F
    :cond_5
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_7

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 511
    iput-boolean v5, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 512
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 514
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v1, v2

    .line 515
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 516
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 518
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 519
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 521
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_6

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_6

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 522
    :cond_6
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    goto/16 :goto_0

    .line 524
    .end local v0    # "delta":F
    :cond_7
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_9

    .line 525
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 526
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 527
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    add-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 528
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 538
    .end local v0    # "delta":F
    :cond_8
    :goto_3
    return-void

    .line 532
    :cond_9
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 533
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 534
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    add-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    goto :goto_3
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-object p0
.end method

.method protected callCallback(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 380
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    invoke-interface {v0, p1, p0}, Laurelienribon/tweenengine/TweenCallback;->onEvent(ILaurelienribon/tweenengine/BaseTween;)V

    .line 381
    :cond_0
    return-void
.end method

.method protected abstract containsTarget(Ljava/lang/Object;)Z
.end method

.method protected abstract containsTarget(Ljava/lang/Object;I)Z
.end method

.method public delay(F)Ljava/lang/Object;
    .locals 1
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    add-float/2addr v0, p1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    .line 110
    return-object p0
.end method

.method protected abstract forceEndValues()V
.end method

.method protected abstract forceStartValues()V
.end method

.method protected forceToEnd(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 372
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v0

    sub-float v0, p1, v0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 373
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 375
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    goto :goto_0
.end method

.method protected forceToStart()V
    .locals 2

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v1, 0x0

    .line 364
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    neg-float v0, v0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 366
    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 367
    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    goto :goto_0
.end method

.method public free()V
    .locals 0

    .prologue
    .line 127
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-void
.end method

.method public getCurrentTime()F
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    return v0
.end method

.method public getDelay()F
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    return v0
.end method

.method public getFullDuration()F
    .locals 3

    .prologue
    .line 272
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 273
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v0, v1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    return v0
.end method

.method public getRepeatDelay()F
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    return v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 358
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 340
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    return v0
.end method

.method protected isReverse(I)Z
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 384
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    return v0
.end method

.method protected isValid(I)Z
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 388
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYoyo()Z
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    return v0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    .line 119
    return-void
.end method

.method protected killTarget(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 392
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->kill()V

    .line 393
    :cond_0
    return-void
.end method

.method protected killTarget(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I

    .prologue
    .line 396
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0, p1, p2}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->kill()V

    .line 397
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    .line 134
    return-void
.end method

.method public repeat(IF)Ljava/lang/Object;
    .locals 2
    .param p1, "count"    # I
    .param p2, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x0

    .line 152
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    .line 154
    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    .end local p2    # "delay":F
    :goto_0
    iput p2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    .line 156
    return-object p0

    .restart local p2    # "delay":F
    :cond_1
    move p2, v0

    .line 154
    goto :goto_0
.end method

.method public repeatYoyo(IF)Ljava/lang/Object;
    .locals 2
    .param p1, "count"    # I
    .param p2, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x0

    .line 169
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    .line 171
    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    .end local p2    # "delay":F
    :goto_0
    iput p2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    .line 173
    return-object p0

    .restart local p2    # "delay":F
    :cond_1
    move p2, v0

    .line 171
    goto :goto_0
.end method

.method protected reset()V
    .locals 3

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    const/4 v0, -0x2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 49
    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    .line 50
    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    .line 53
    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    .line 55
    iput-object v2, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    .line 57
    iput-object v2, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    .line 60
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    .line 141
    return-void
.end method

.method public setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;
    .locals 0
    .param p1, "callback"    # Laurelienribon/tweenengine/TweenCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/TweenCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    .line 185
    return-object p0
.end method

.method public setCallbackTriggers(I)Ljava/lang/Object;
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    .line 216
    return-object p0
.end method

.method public setUserData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    .line 228
    return-object p0
.end method

.method public start()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->build()Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    .line 88
    return-object p0
.end method

.method public start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;
    .locals 0
    .param p1, "manager"    # Laurelienribon/tweenengine/TweenManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/TweenManager;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/TweenManager;->add(Laurelienribon/tweenengine/BaseTween;)Laurelienribon/tweenengine/TweenManager;

    .line 99
    return-object p0
.end method

.method public update(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 414
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 418
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-nez v0, :cond_2

    .line 419
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->initialize()V

    .line 422
    :cond_2
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-eqz v0, :cond_3

    .line 423
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->testRelaunch()V

    .line 424
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->updateStep()V

    .line 425
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->testCompletion()V

    .line 428
    :cond_3
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v0, v1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    goto :goto_0
.end method

.method protected updateOverride(IIZF)V
    .locals 0
    .param p1, "step"    # I
    .param p2, "lastStep"    # I
    .param p3, "isIterationStep"    # Z
    .param p4, "delta"    # F

    .prologue
    .line 361
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-void
.end method
