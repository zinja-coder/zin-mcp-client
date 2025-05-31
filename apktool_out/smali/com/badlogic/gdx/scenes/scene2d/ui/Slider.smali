.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    }
.end annotation


# instance fields
.field draggingPointer:I

.field private visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_0

    const-string v0, "vertical"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 43
    return-void

    .line 42
    :cond_0
    const-string v0, "horizontal"

    goto :goto_0
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p6, "styleName"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 47
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 39
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->shiftIgnoresSnap:Z

    .line 62
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 86
    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FF)Z
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v10

    .line 102
    .local v10, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v14, :cond_1

    iget-object v14, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v14, :cond_1

    iget-object v3, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 103
    .local v3, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->disabled:Z

    if-eqz v14, :cond_2

    iget-object v14, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v14, :cond_2

    iget-object v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 106
    .local v1, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 108
    .local v8, "oldPosition":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMinValue()F

    move-result v7

    .line 109
    .local v7, "min":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getMaxValue()F

    move-result v6

    .line 111
    .local v6, "max":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    if-eqz v14, :cond_4

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result v14

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v15

    sub-float v2, v14, v15

    .line 113
    .local v2, "height":F
    if-nez v3, :cond_3

    const/4 v4, 0x0

    .line 114
    .local v4, "knobHeight":F
    :goto_2
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v14

    sub-float v14, p2, v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v15, v4

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 115
    sub-float v14, v6, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    move/from16 v16, v0

    sub-float v17, v2, v4

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v11, v7, v14

    .line 116
    .local v11, "value":F
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 117
    sub-float v14, v2, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 127
    .end local v2    # "height":F
    .end local v4    # "knobHeight":F
    :goto_3
    move v9, v11

    .line 128
    .local v9, "oldValue":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    move-result v12

    .line 129
    .local v12, "valueSet":Z
    cmpl-float v14, v11, v9

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 130
    :cond_0
    return v12

    .line 102
    .end local v1    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v3    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v6    # "max":F
    .end local v7    # "min":F
    .end local v8    # "oldPosition":F
    .end local v9    # "oldValue":F
    .end local v11    # "value":F
    .end local v12    # "valueSet":Z
    :cond_1
    iget-object v3, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto/16 :goto_0

    .line 103
    .restart local v3    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_2
    iget-object v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    .line 113
    .restart local v1    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v2    # "height":F
    .restart local v6    # "max":F
    .restart local v7    # "min":F
    .restart local v8    # "oldPosition":F
    :cond_3
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    goto :goto_2

    .line 119
    .end local v2    # "height":F
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result v14

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v15

    sub-float v13, v14, v15

    .line 120
    .local v13, "width":F
    if-nez v3, :cond_5

    const/4 v5, 0x0

    .line 121
    .local v5, "knobWidth":F
    :goto_4
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v14

    sub-float v14, p1, v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v15, v5

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 122
    sub-float v14, v6, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    move/from16 v16, v0

    sub-float v17, v13, v5

    div-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v15

    mul-float/2addr v14, v15

    add-float v11, v7, v14

    .line 123
    .restart local v11    # "value":F
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    .line 124
    sub-float v14, v13, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->position:F

    goto :goto_3

    .line 120
    .end local v5    # "knobWidth":F
    .end local v11    # "value":F
    :cond_5
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    goto :goto_4
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .prologue
    .line 89
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "style cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style must be a SliderStyle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 92
    return-void
.end method

.method public setVisualInterpolationInverse(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->visualInterpolationInverse:Lcom/badlogic/gdx/math/Interpolation;

    .line 142
    return-void
.end method
