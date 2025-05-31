.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;,
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field public allowSameAnimation:Z

.field protected final animationPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
            ">;"
        }
    .end annotation
.end field

.field public current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public inAction:Z

.field private justChangedAnimation:Z

.field public paused:Z

.field public previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queuedTransitionTime:F

.field public transitionCurrentTime:F

.field public transitionTargetTime:F

.field private updating:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    .line 115
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 147
    return-void
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 160
    .end local p3    # "duration":F
    :goto_0
    return-object v0

    .line 152
    .restart local p3    # "duration":F
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 153
    .local v0, "result":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 154
    iput-object p6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .line 155
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    .line 156
    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    .line 157
    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    .line 158
    cmpg-float v2, p3, v1

    if-gez v2, :cond_1

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    sub-float p3, v2, p2

    .end local p3    # "duration":F
    :cond_1
    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    .line 159
    cmpg-float v2, p5, v1

    if-gez v2, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    :cond_2
    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_0
.end method

.method private obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .prologue
    .line 172
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method private obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    .line 165
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v1

    .line 167
    .local v1, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    if-nez v1, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 168
    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected action(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .prologue
    .line 489
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"    # F

    .prologue
    .line 494
    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-gez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "An action cannot be continuous"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v1, :cond_3

    .line 496
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 504
    :cond_2
    :goto_0
    return-object p1

    .line 498
    :cond_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 499
    .local v0, "toQueue":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 502
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 498
    .end local v0    # "toQueue":Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    goto :goto_1
.end method

.method public action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .prologue
    .line 483
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public action(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"    # F

    .prologue
    .line 465
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .prologue
    .line 372
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"    # F

    .prologue
    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_0

    .line 378
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 395
    :goto_0
    return-object p1

    .line 379
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 381
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_2

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 384
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 391
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    .line 393
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    goto :goto_0
.end method

.method public animate(Ljava/lang/String;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "transitionTime"    # F

    .prologue
    .line 310
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .prologue
    .line 366
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"    # F

    .prologue
    .line 348
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p4, "transitionTime"    # F

    .prologue
    .line 332
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public animate(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p3, "transitionTime"    # F

    .prologue
    .line 320
    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .prologue
    .line 436
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .param p2, "transitionTime"    # F

    .prologue
    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_2

    .line 442
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 449
    :cond_1
    :goto_0
    return-object p1

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 445
    :cond_3
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 446
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    goto :goto_0
.end method

.method public queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p7, "transitionTime"    # F

    .prologue
    .line 430
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public queue(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    .param p5, "transitionTime"    # F

    .prologue
    .line 411
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    .line 283
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method protected setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "anim"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->updating:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot change animation during update"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_1

    .line 291
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 300
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 301
    return-object p1

    .line 293
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v0, v1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 298
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    goto :goto_1
.end method

.method public setAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "offset"    # F
    .param p3, "duration"    # F
    .param p4, "loopCount"    # I
    .param p5, "speed"    # F
    .param p6, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    .line 277
    invoke-direct/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->obtain(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I

    .prologue
    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "speed"    # F
    .param p4, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    .line 260
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "loopCount"    # I
    .param p3, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    .line 246
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    .prologue
    .line 235
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 8
    .param p1, "delta"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->paused:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    .line 183
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animationPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 185
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 187
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 189
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-eqz v0, :cond_0

    .line 192
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->justChangedAnimation:Z

    .line 193
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->updating:Z

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->update(F)F

    move-result v6

    .line 195
    .local v6, "remain":F
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_4

    .line 196
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 198
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    .line 199
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->updating:Z

    .line 200
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->update(F)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    div-float v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimations(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    .line 208
    :goto_1
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->updating:Z

    goto/16 :goto_0

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    goto :goto_1
.end method
