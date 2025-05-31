.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ScaleToAction.java"


# instance fields
.field private endX:F

.field private endY:F

.field private startX:F

.field private startY:F


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
    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->startX:F

    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->startY:F

    .line 28
    return-void
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endY:F

    return v0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endX:F

    .line 41
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endY:F

    .line 42
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endX:F

    .line 36
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endY:F

    .line 37
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endX:F

    .line 50
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endY:F

    .line 58
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->startX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->startX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->startY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->endY:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->startY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScale(FF)V

    .line 32
    return-void
.end method
