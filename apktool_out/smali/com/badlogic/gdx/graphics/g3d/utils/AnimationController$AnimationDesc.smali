.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
.super Ljava/lang/Object;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationDesc"
.end annotation


# instance fields
.field public animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

.field public duration:F

.field public listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

.field public loopCount:I

.field public offset:F

.field public speed:F

.field public time:F


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method protected update(F)F
    .locals 8
    .param p1, "delta"    # F

    .prologue
    const/4 v4, 0x0

    .line 85
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-eqz v5, :cond_9

    .line 87
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    mul-float v0, v5, p1

    .line 88
    .local v0, "diff":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v5

    if-nez v5, :cond_4

    .line 89
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 90
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 91
    .local v2, "loops":I
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    .line 94
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_0

    .line 96
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    rem-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 99
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 100
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    .line 101
    :cond_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    invoke-interface {v5, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;->onLoop(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)V

    .line 102
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v5, :cond_7

    .line 103
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    mul-float/2addr v6, v5

    cmpg-float v5, v0, v4

    if-gez v5, :cond_5

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    sub-float/2addr v5, v7

    :goto_3
    add-float v3, v6, v5

    .line 104
    .local v3, "result":F
    cmpg-float v5, v0, v4

    if-gez v5, :cond_6

    :goto_4
    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    .line 105
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    invoke-interface {v4, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;->onEnd(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)V

    .line 111
    .end local v0    # "diff":F
    .end local v1    # "i":I
    .end local v2    # "loops":I
    .end local v3    # "result":F
    :cond_3
    :goto_5
    return v3

    .line 98
    .restart local v0    # "diff":F
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "loops":I
    goto :goto_1

    .line 103
    .restart local v1    # "i":I
    :cond_5
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_3

    .line 104
    .restart local v3    # "result":F
    :cond_6
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    goto :goto_4

    .line 99
    .end local v3    # "result":F
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v3, v4

    .line 109
    goto :goto_5

    .end local v0    # "diff":F
    .end local v1    # "i":I
    .end local v2    # "loops":I
    :cond_9
    move v3, p1

    .line 111
    goto :goto_5
.end method
