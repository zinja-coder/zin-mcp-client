.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "MoveToAction.java"


# instance fields
.field private alignment:I

.field private endX:F

.field private endY:F

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 26
    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    .line 31
    return-void
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    .line 39
    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    .line 40
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "alignment"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    .line 75
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .line 45
    return-void
.end method

.method public setPosition(FFI)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "alignment"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 49
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .line 50
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    .line 51
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    .line 59
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    .line 67
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->endY:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->startY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->alignment:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FFI)V

    .line 35
    return-void
.end method
