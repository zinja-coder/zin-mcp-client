.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "DragListener.java"


# instance fields
.field private button:I

.field private deltaX:F

.field private deltaY:F

.field private dragging:Z

.field private pressedPointer:I

.field private stageTouchDownX:F

.field private stageTouchDownY:F

.field private tapSquareSize:F

.field private touchDownX:F

.field private touchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 28
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownY:F

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    .line 82
    return-void
.end method

.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 73
    return-void
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 70
    return-void
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 76
    return-void
.end method

.method public getButton()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    return v0
.end method

.method public getDeltaX()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaX:F

    return v0
.end method

.method public getDeltaY()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaY:F

    return v0
.end method

.method public getStageTouchDownX()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownX:F

    return v0
.end method

.method public getStageTouchDownY()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownY:F

    return v0
.end method

.method public getTapSquareSize()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    return v0
.end method

.method public getTouchDownX()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    return v0
.end method

.method public getTouchDownY()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    return v0
.end method

.method public setButton(I)V
    .locals 0
    .param p1, "button"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    .line 130
    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0
    .param p1, "halfTapSquareSize"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    .line 91
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 35
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    if-eq v1, v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    if-nez p4, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->button:I

    if-ne p5, v1, :cond_0

    .line 37
    :cond_2
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    .line 39
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    .line 40
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownX:F

    .line 41
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->stageTouchDownY:F

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    if-eq p4, v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownX:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->touchDownY:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->tapSquareSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 48
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaX:F

    .line 51
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaY:F

    .line 53
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaX:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaX:F

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaY:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaY:F

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 57
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaX:F

    .line 58
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->deltaY:F

    goto :goto_0
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->pressedPointer:I

    if-ne p4, v0, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragging:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->cancel()V

    .line 67
    :cond_1
    return-void
.end method
