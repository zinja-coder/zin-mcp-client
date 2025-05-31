.class public Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "FloatAction.java"


# instance fields
.field private end:F

.field private start:F

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    .line 29
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 33
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    .line 34
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    .line 35
    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    .line 39
    return-void
.end method

.method public getEnd()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return v0
.end method

.method public getStart()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    return v0
.end method

.method public setEnd(F)V
    .locals 0
    .param p1, "end"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    .line 71
    return-void
.end method

.method public setStart(F)V
    .locals 0
    .param p1, "start"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    .line 62
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    .line 53
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 42
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    .line 43
    return-void
.end method
