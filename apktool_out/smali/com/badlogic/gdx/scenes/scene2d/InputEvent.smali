.class public Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "InputEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    }
.end annotation


# instance fields
.field private button:I

.field private character:C

.field private keyCode:I

.field private pointer:I

.field private relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private scrollAmount:I

.field private stageX:F

.field private stageY:F

.field private type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public getButton()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    return v0
.end method

.method public getCharacter()C
    .locals 1

    .prologue
    .line 95
    iget-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    return v0
.end method

.method public getPointer()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    return v0
.end method

.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getScrollAmount()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmount:I

    return v0
.end method

.method public getStageX()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    return v0
.end method

.method public getStageY()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method

.method public isTouchFocusCancel()Z
    .locals 2

    .prologue
    const/high16 v1, -0x31000000

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    .line 35
    return-void
.end method

.method public setButton(I)V
    .locals 0
    .param p1, "button"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    .line 82
    return-void
.end method

.method public setCharacter(C)V
    .locals 0
    .param p1, "character"    # C

    .prologue
    .line 99
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    .line 100
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    .line 91
    return-void
.end method

.method public setPointer(I)V
    .locals 0
    .param p1, "pointer"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    .line 72
    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "relatedActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 120
    return-void
.end method

.method public setScrollAmount(I)V
    .locals 0
    .param p1, "scrollAmount"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmount:I

    .line 109
    return-void
.end method

.method public setStageX(F)V
    .locals 0
    .param p1, "stageX"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    .line 44
    return-void
.end method

.method public setStageY(F)V
    .locals 0
    .param p1, "stageY"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    .line 53
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 62
    return-void
.end method

.method public toCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actorCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 125
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 126
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 127
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
