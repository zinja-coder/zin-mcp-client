.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "List.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;"
    }
.end annotation


# instance fields
.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private itemHeight:F

.field private final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field private prefHeight:F

.field private prefWidth:F

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

.field private textOffsetX:F

.field private textOffsetY:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .prologue
    .line 57
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setRequired(Z)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 62
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setSize(FF)V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 50
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"    # Ljava/lang/String;

    .prologue
    .line 54
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 234
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 22
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 125
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->validate()V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v14, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 128
    .local v14, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v7, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 129
    .local v7, "selectedDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v15, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 130
    .local v15, "fontColorSelected":Lcom/badlogic/gdx/graphics/Color;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v0

    .line 132
    .local v16, "fontColorUnselected":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    .line 133
    .local v13, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v13, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v13, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v13, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v10, v13, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v10, v10, p2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getX()F

    move-result v3

    .local v3, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getY()F

    move-result v4

    .local v4, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getWidth()F

    move-result v5

    .local v5, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v6

    .line 136
    .local v6, "height":F
    move/from16 v19, v6

    .line 138
    .local v19, "itemY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 139
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    .line 140
    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 141
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v20

    .line 142
    .local v20, "leftWidth":F
    add-float v3, v3, v20

    .line 143
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    sub-float v19, v19, v2

    .line 144
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float v2, v2, v20

    sub-float/2addr v5, v2

    .line 147
    .end local v20    # "leftWidth":F
    :cond_0
    move-object/from16 v0, v16

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, v16

    iget v8, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, v16

    iget v9, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, v16

    iget v10, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v10, v10, p2

    invoke-virtual {v14, v2, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 148
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v2, v19, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v8, v9

    cmpg-float v2, v2, v8

    if-gtz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v2, v19, v2

    if-ltz v2, :cond_4

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 151
    .local v18, "item":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 152
    .local v21, "selected":Z
    if-eqz v21, :cond_2

    .line 153
    add-float v2, v4, v19

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v10, v2, v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    move-object/from16 v8, p1

    move v9, v3

    move v11, v5

    invoke-interface/range {v7 .. v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 154
    iget v2, v15, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v15, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v10, v10, p2

    invoke-virtual {v14, v2, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 156
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    add-float/2addr v8, v3

    add-float v9, v4, v19

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v2, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 157
    if-eqz v21, :cond_3

    .line 158
    move-object/from16 v0, v16

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move-object/from16 v0, v16

    iget v8, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move-object/from16 v0, v16

    iget v9, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object/from16 v0, v16

    iget v10, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v10, v10, p2

    invoke-virtual {v14, v2, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 164
    .end local v18    # "item":Ljava/lang/Object;, "TT;"
    .end local v21    # "selected":Z
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v19, v19, v2

    .line 148
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v19, v2

    if-gez v2, :cond_3

    .line 166
    :cond_5
    return-void
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    return v0
.end method

.method public getItems()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 252
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->validate()V

    .line 253
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->validate()V

    .line 248
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    return v0
.end method

.method public getSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 4

    .prologue
    .line 189
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v0

    .line 190
    .local v0, "selected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    goto :goto_0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    return-object v0
.end method

.method public layout()V
    .locals 8

    .prologue
    .line 99
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 100
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v4, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 102
    .local v4, "selectedDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    .line 103
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    .line 105
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    .line 106
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    .line 108
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 109
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    .line 111
    .local v1, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 114
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 116
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 117
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v0, :cond_1

    .line 118
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 119
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v6

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 121
    :cond_1
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0
    .param p1, "cullingArea"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 257
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 258
    return-void
.end method

.method public setItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .param p1, "newItems"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 219
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "newItems cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v1

    .local v1, "oldPrefWidth":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v0

    .line 222
    .local v0, "oldPrefHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 223
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 224
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 226
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidate()V

    .line 227
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 228
    :cond_2
    return-void
.end method

.method public varargs setItems([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "newItems cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v1

    .local v1, "oldPrefWidth":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v0

    .line 208
    .local v0, "oldPrefHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 209
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    .line 210
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 212
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidate()V

    .line 213
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 214
    :cond_2
    return-void
.end method

.method public setSelected(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->getRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    const/4 v1, -0x1

    .line 195
    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must be >= -1 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    if-ne p1, v1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .prologue
    .line 88
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 90
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 91
    return-void
.end method

.method touchDown(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 75
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/List;, "Lcom/badlogic/gdx/scenes/scene2d/ui/List<TT;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v0

    .line 77
    .local v0, "height":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 79
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    sub-float/2addr p1, v2

    .line 81
    :cond_1
    sub-float v2, v0, p1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 82
    .local v1, "index":I
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    goto :goto_0
.end method
