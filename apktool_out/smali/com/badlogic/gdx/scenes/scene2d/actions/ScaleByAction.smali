.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "ScaleByAction.java"


# instance fields
.field private amountX:F

.field private amountY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountX()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    return v0
.end method

.method public getAmountY()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    .line 35
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    .line 36
    return-void
.end method

.method public setAmount(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    .line 30
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    .line 31
    return-void
.end method

.method public setAmountX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    .line 44
    return-void
.end method

.method public setAmountY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    .line 52
    return-void
.end method

.method protected updateRelative(F)V
    .locals 3
    .param p1, "percentDelta"    # F

    .prologue
    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleBy(FF)V

    .line 26
    return-void
.end method
