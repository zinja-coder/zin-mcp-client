.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Touchpad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;
    }
.end annotation


# instance fields
.field private final deadzoneBounds:Lcom/badlogic/gdx/math/Circle;

.field private deadzoneRadius:F

.field private final knobBounds:Lcom/badlogic/gdx/math/Circle;

.field private final knobPercent:Lcom/badlogic/gdx/math/Vector2;

.field private final knobPosition:Lcom/badlogic/gdx/math/Vector2;

.field resetOnTouchUp:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

.field private final touchBounds:Lcom/badlogic/gdx/math/Circle;

.field touched:Z


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "deadzoneRadius"    # F
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 51
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;-><init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V

    .line 52
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "deadzoneRadius"    # F
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;-><init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V

    .line 57
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
    .locals 4
    .param p1, "deadzoneRadius"    # F
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->resetOnTouchUp:Z

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touchBounds:Lcom/badlogic/gdx/math/Circle;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->deadzoneBounds:Lcom/badlogic/gdx/math/Circle;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    .line 61
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deadzoneRadius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->deadzoneRadius:F

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 66
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V

    .line 67
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->setSize(FF)V

    .line 69
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 89
    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FFZ)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isTouchUp"    # Z

    .prologue
    .line 92
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 93
    .local v6, "oldPositionX":F
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 94
    .local v7, "oldPositionY":F
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 95
    .local v4, "oldPercentX":F
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 96
    .local v5, "oldPercentY":F
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v0, v8, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 97
    .local v0, "centerX":F
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v1, v8, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 98
    .local v1, "centerY":F
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 99
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 100
    if-nez p3, :cond_1

    .line 101
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->deadzoneBounds:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v8, p1, p2}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result v8

    if-nez v8, :cond_1

    .line 102
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    sub-float v9, p1, v0

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v10, v10, Lcom/badlogic/gdx/math/Circle;->radius:F

    div-float/2addr v9, v10

    sub-float v10, p2, v1

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v11, v11, Lcom/badlogic/gdx/math/Circle;->radius:F

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 103
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v3

    .line 104
    .local v3, "length":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v3

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    .line 105
    :cond_0
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v8, p1, p2}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 106
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 112
    .end local v3    # "length":F
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v8, v4, v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_4

    .line 113
    :cond_2
    const-class v8, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v8}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 114
    .local v2, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 115
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 116
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 118
    :cond_3
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 120
    .end local v2    # "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    :cond_4
    return-void

    .line 108
    .restart local v3    # "length":F
    :cond_5
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v9, v9, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v9, v9, Lcom/badlogic/gdx/math/Circle;->x:F

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    iget v10, v10, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 13
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->validate()V

    .line 158
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    .line 159
    .local v12, "c":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v12, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v12, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v8, v12, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v9, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v9, p2

    invoke-interface {p1, v1, v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 161
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getX()F

    move-result v2

    .line 162
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getY()F

    move-result v3

    .line 163
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getWidth()F

    move-result v4

    .line 164
    .local v4, "w":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getHeight()F

    move-result v5

    .line 166
    .local v5, "h":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 167
    .local v0, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v0, :cond_0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 170
    .local v6, "knob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v6, :cond_1

    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    div-float/2addr v7, v10

    sub-float/2addr v1, v7

    add-float/2addr v2, v1

    .line 172
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    div-float/2addr v7, v10

    sub-float/2addr v1, v7

    add-float/2addr v3, v1

    .line 173
    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v10

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v11

    move-object v7, p1

    move v8, v2

    move v9, v3

    invoke-interface/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 175
    :cond_1
    return-void
.end method

.method public getKnobPercentX()F
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getKnobPercentY()F
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getKnobX()F
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getKnobY()F
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResetOnTouchUp()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->resetOnTouchUp:Z

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touchBounds:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    return v0
.end method

.method public layout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 142
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getWidth()F

    move-result v3

    div-float v1, v3, v5

    .line 143
    .local v1, "halfWidth":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->getHeight()F

    move-result v3

    div-float v0, v3, v5

    .line 144
    .local v0, "halfHeight":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 145
    .local v2, "radius":F
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touchBounds:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v3, v1, v0, v2}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    .line 146
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobBounds:Lcom/badlogic/gdx/math/Circle;

    invoke-virtual {v3, v1, v0, v2}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    .line 148
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->deadzoneBounds:Lcom/badlogic/gdx/math/Circle;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->deadzoneRadius:F

    invoke-virtual {v3, v1, v0, v4}, Lcom/badlogic/gdx/math/Circle;->set(FFF)V

    .line 150
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 151
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->knobPercent:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v6, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 152
    return-void
.end method

.method public setDeadzone(F)V
    .locals 2
    .param p1, "deadzoneRadius"    # F

    .prologue
    .line 202
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deadzoneRadius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->deadzoneRadius:F

    .line 204
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->invalidate()V

    .line 205
    return-void
.end method

.method public setResetOnTouchUp(Z)V
    .locals 0
    .param p1, "reset"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->resetOnTouchUp:Z

    .line 198
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    .prologue
    .line 123
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->invalidateHierarchy()V

    .line 126
    return-void
.end method
