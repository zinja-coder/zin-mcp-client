.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "RotateToAction.java"


# instance fields
.field private end:F

.field private start:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    .line 26
    return-void
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    return v0
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    .line 38
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->end:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->start:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    .line 30
    return-void
.end method
