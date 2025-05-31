.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "RotateByAction.java"


# instance fields
.field private amount:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->amount:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0
    .param p1, "rotationAmount"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->amount:F

    .line 34
    return-void
.end method

.method protected updateRelative(F)V
    .locals 2
    .param p1, "percentDelta"    # F

    .prologue
    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->amount:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotateBy(F)V

    .line 26
    return-void
.end method
