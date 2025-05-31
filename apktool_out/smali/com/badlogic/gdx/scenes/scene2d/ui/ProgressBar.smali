.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ProgressBar.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    }
.end annotation


# instance fields
.field private animateDuration:F

.field private animateFromValue:F

.field private animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private animateTime:F

.field disabled:Z

.field private max:F

.field private min:F

.field position:F

.field shiftIgnoresSnap:Z

.field private snapValues:[F

.field private stepSize:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

.field private threshold:F

.field private value:F

.field final vertical:Z

.field private visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 3
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 56
    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 77
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max must be > min. min,max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stepSize must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 80
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 81
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 82
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 83
    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    .line 84
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setSize(FF)V

    .line 86
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "stepSize"    # F
    .param p4, "vertical"    # Z
    .param p5, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 59
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

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 60
    return-void

    .line 59
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
    .line 63
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 64
    return-void
.end method

.method private snap(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 313
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    if-nez v1, :cond_1

    .line 317
    .end local p1    # "value":F
    :cond_0
    :goto_0
    return p1

    .line 314
    .restart local p1    # "value":F
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    aget v1, v1, v0

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->threshold:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    aget p1, v1, v0

    goto :goto_0

    .line 314
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public act(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->act(F)V

    .line 103
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 104
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 106
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 108
    .end local v0    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_0
    return-void
.end method

.method protected clamp(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 240
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 29
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object/from16 v26, v0

    .line 113
    .local v26, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    .line 114
    .local v15, "disabled":Z
    if-eqz v15, :cond_5

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_5

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v16, v0

    .line 115
    .local v16, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    if-eqz v15, :cond_6

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_6

    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 116
    .local v1, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_1
    if-eqz v15, :cond_7

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_7

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 117
    .local v7, "knobBefore":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_2
    if-eqz v15, :cond_8

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v17, v0

    .line 119
    .local v17, "knobAfter":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    .line 120
    .local v14, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getX()F

    move-result v28

    .line 121
    .local v28, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getY()F

    move-result v4

    .line 122
    .local v4, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getWidth()F

    move-result v27

    .line 123
    .local v27, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getHeight()F

    move-result v6

    .line 124
    .local v6, "height":F
    if-nez v16, :cond_9

    const/16 v18, 0x0

    .line 125
    .local v18, "knobHeight":F
    :goto_4
    if-nez v16, :cond_a

    const/16 v20, 0x0

    .line 126
    .local v20, "knobWidth":F
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualPercent()F

    move-result v23

    .line 128
    .local v23, "percent":F
    iget v2, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v8, v8, p2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v5, v8}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v2, :cond_d

    .line 131
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float v2, v27, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v3, v28, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 133
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    sub-float v24, v6, v2

    .line 134
    .local v24, "positionHeight":F
    const/16 v19, 0x0

    .line 135
    .local v19, "knobHeightHalf":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 136
    if-nez v16, :cond_c

    .line 137
    if-nez v7, :cond_b

    const/16 v19, 0x0

    .line 138
    :goto_6
    sub-float v2, v24, v19

    mul-float v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 139
    sub-float v2, v24, v19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 145
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 148
    :cond_0
    if-eqz v7, :cond_2

    .line 149
    const/16 v22, 0x0

    .line 150
    .local v22, "offset":F
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v22

    .line 151
    :cond_1
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float v2, v27, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v9, v28, v2

    add-float v10, v4, v22

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-interface/range {v7 .. v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 154
    .end local v22    # "offset":F
    :cond_2
    if-eqz v17, :cond_3

    .line 155
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float v2, v27, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v10, v28, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v11, v4, v2

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v13, v6, v2

    move-object/from16 v8, v17

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 158
    :cond_3
    if-eqz v16, :cond_4

    sub-float v2, v27, v20

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v10, v28, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v11, v2

    move-object/from16 v8, v16

    move-object/from16 v9, p1

    move/from16 v12, v20

    move/from16 v13, v18

    invoke-interface/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 189
    .end local v19    # "knobHeightHalf":F
    .end local v24    # "positionHeight":F
    :cond_4
    :goto_8
    return-void

    .line 114
    .end local v1    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v4    # "y":F
    .end local v6    # "height":F
    .end local v7    # "knobBefore":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v14    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v16    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v17    # "knobAfter":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v18    # "knobHeight":F
    .end local v20    # "knobWidth":F
    .end local v23    # "percent":F
    .end local v27    # "width":F
    .end local v28    # "x":F
    :cond_5
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 115
    .restart local v16    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_6
    move-object/from16 v0, v26

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto/16 :goto_1

    .line 116
    .restart local v1    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_7
    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto/16 :goto_2

    .line 117
    .restart local v7    # "knobBefore":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_8
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 124
    .restart local v4    # "y":F
    .restart local v6    # "height":F
    .restart local v14    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v17    # "knobAfter":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v27    # "width":F
    .restart local v28    # "x":F
    :cond_9
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v18

    goto/16 :goto_4

    .line 125
    .restart local v18    # "knobHeight":F
    :cond_a
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v20

    goto/16 :goto_5

    .line 137
    .restart local v19    # "knobHeightHalf":F
    .restart local v20    # "knobWidth":F
    .restart local v23    # "percent":F
    .restart local v24    # "positionHeight":F
    :cond_b
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v19, v2, v3

    goto/16 :goto_6

    .line 141
    :cond_c
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v19, v18, v2

    .line 142
    sub-float v2, v24, v18

    mul-float v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 143
    sub-float v2, v24, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto/16 :goto_7

    .line 160
    .end local v19    # "knobHeightHalf":F
    .end local v24    # "positionHeight":F
    :cond_d
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    sub-float v2, v6, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v11, v4, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v13

    move-object v8, v1

    move-object/from16 v9, p1

    move/from16 v10, v28

    move/from16 v12, v27

    invoke-interface/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 162
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    sub-float v25, v27, v2

    .line 163
    .local v25, "positionWidth":F
    const/16 v21, 0x0

    .line 164
    .local v21, "knobWidthHalf":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    .line 165
    if-nez v16, :cond_13

    .line 166
    if-nez v7, :cond_12

    const/16 v21, 0x0

    .line 167
    :goto_9
    sub-float v2, v25, v21

    mul-float v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 168
    sub-float v2, v25, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 174
    :goto_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 177
    :cond_e
    if-eqz v7, :cond_10

    .line 178
    const/16 v22, 0x0

    .line 179
    .restart local v22    # "offset":F
    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v22

    .line 180
    :cond_f
    add-float v9, v28, v22

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    sub-float v2, v6, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v10, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v11, v2

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v12

    move-object/from16 v8, p1

    invoke-interface/range {v7 .. v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 183
    .end local v22    # "offset":F
    :cond_10
    if-eqz v17, :cond_11

    .line 184
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v10, v28, v2

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    sub-float v2, v6, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v11, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v12, v27, v2

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v13

    move-object/from16 v8, v17

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 187
    :cond_11
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float v2, v2, v28

    float-to-int v2, v2

    int-to-float v10, v2

    sub-float v2, v6, v18

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v11, v2

    move-object/from16 v8, v16

    move-object/from16 v9, p1

    move/from16 v12, v20

    move/from16 v13, v18

    invoke-interface/range {v8 .. v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto/16 :goto_8

    .line 166
    :cond_12
    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v21, v2, v3

    goto/16 :goto_9

    .line 170
    :cond_13
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v21, v20, v2

    .line 171
    sub-float v2, v25, v20

    mul-float v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    .line 172
    sub-float v2, v25, v20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto/16 :goto_a
.end method

.method protected getKnobPosition()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    return v0
.end method

.method public getPercent()F
    .locals 3

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 4

    .prologue
    .line 268
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v2, :cond_0

    .line 269
    const/high16 v2, 0x430c0000    # 140.0f

    .line 273
    :goto_0
    return v2

    .line 271
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 272
    .local v1, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 273
    .local v0, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    .line 271
    .end local v0    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v1    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    .line 272
    .restart local v1    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    .line 273
    .restart local v0    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_3
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    goto :goto_3
.end method

.method public getPrefWidth()F
    .locals 4

    .prologue
    .line 259
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v2, :cond_3

    .line 260
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 261
    .local v1, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 262
    .local v0, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_1
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 264
    .end local v0    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v1    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_3
    return v2

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 261
    .restart local v1    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    .line 262
    .restart local v0    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_2
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    goto :goto_2

    .line 264
    .end local v0    # "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v1    # "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_3
    const/high16 v2, 0x430c0000    # 140.0f

    goto :goto_3
.end method

.method public getStepSize()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public getVisualPercent()F
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    return v0
.end method

.method public getVisualValue()F
    .locals 6

    .prologue
    .line 197
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return v0
.end method

.method public setAnimateDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 291
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    .line 292
    return-void
.end method

.method public setAnimateInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 2
    .param p1, "animateInterpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 296
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "animateInterpolation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 298
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    .line 322
    return-void
.end method

.method public setRange(FF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 245
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min must be <= max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    .line 247
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    .line 248
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 249
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    goto :goto_0
.end method

.method public setSnapToValues([FF)V
    .locals 0
    .param p1, "values"    # [F
    .param p2, "threshold"    # F

    .prologue
    .line 307
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    .line 308
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->threshold:F

    .line 309
    return-void
.end method

.method public setStepSize(F)V
    .locals 3
    .param p1, "stepSize"    # F

    .prologue
    .line 254
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steps must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    .line 256
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .prologue
    .line 89
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    .line 91
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->invalidateHierarchy()V

    .line 92
    return-void
.end method

.method public setValue(F)Z
    .locals 7
    .param p1, "value"    # F

    .prologue
    const/4 v4, 0x0

    .line 218
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    div-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->clamp(F)F

    move-result p1

    .line 219
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->shiftIgnoresSnap:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x3b

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x3c

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snap(F)F

    move-result p1

    .line 221
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 222
    .local v2, "oldValue":F
    cmpl-float v5, p1, v2

    if-nez v5, :cond_3

    .line 234
    :cond_2
    :goto_0
    return v4

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v3

    .line 224
    .local v3, "oldVisualValue":F
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 225
    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v5}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 226
    .local v1, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    .line 227
    .local v0, "cancelled":Z
    if-eqz v0, :cond_5

    .line 228
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    .line 233
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 234
    if-nez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 229
    :cond_5
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 230
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    .line 231
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    goto :goto_1
.end method

.method public setVisualInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    .line 303
    return-void
.end method
