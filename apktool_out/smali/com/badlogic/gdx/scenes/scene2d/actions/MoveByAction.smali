.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "MoveByAction.java"


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
    .line 34
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    return v0
.end method

.method public getAmountY()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    return v0
.end method

.method public setAmount(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    .line 30
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    .line 31
    return-void
.end method

.method public setAmountX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    .line 39
    return-void
.end method

.method public setAmountY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    .line 47
    return-void
.end method

.method protected updateRelative(F)V
    .locals 3
    .param p1, "percentDelta"    # F

    .prologue
    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    .line 26
    return-void
.end method
