.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SelectBox.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;"
    }
.end annotation


# static fields
.field static final temp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field private final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field disabled:Z

.field final items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

.field private prefHeight:F

.field private prefWidth:F

.field selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection",
            "<TT;>;"
        }
    .end annotation
.end field

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    .prologue
    .line 73
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSize(FF)V

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->setRequired(Z)V

    .line 80
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 66
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"    # Ljava/lang/String;

    .prologue
    .line 70
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    .line 71
    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 17
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 196
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->validate()V

    .line 199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 209
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v7, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 210
    .local v7, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v15, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 212
    .local v15, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    .line 213
    .local v14, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getX()F

    move-result v3

    .line 214
    .local v3, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getY()F

    move-result v4

    .line 215
    .local v4, "y":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v5

    .line 216
    .local v5, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v6

    .line 218
    .local v6, "height":F
    iget v2, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v10, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v11, v11, p2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v8, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 219
    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->first()Ljava/lang/Object;

    move-result-object v16

    .line 222
    .local v16, "selected":Ljava/lang/Object;, "TT;"
    if-eqz v16, :cond_1

    .line 223
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 225
    if-eqz v1, :cond_7

    .line 226
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v8

    add-float/2addr v2, v8

    sub-float/2addr v5, v2

    .line 227
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v8

    add-float/2addr v2, v8

    sub-float/2addr v6, v2

    .line 228
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    add-float/2addr v3, v2

    .line 229
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v6, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v8

    add-float/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    .line 233
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v9, v2, v8, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v13

    .line 234
    .local v13, "numGlyphs":I
    iget v2, v15, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v15, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v11, v11, p2

    invoke-virtual {v7, v2, v8, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 235
    const/4 v12, 0x0

    move-object/from16 v8, p1

    move v10, v3

    move v11, v4

    invoke-virtual/range {v7 .. v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 237
    .end local v9    # "string":Ljava/lang/String;
    .end local v13    # "numGlyphs":I
    :cond_1
    return-void

    .line 201
    .end local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "width":F
    .end local v6    # "height":F
    .end local v7    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v14    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v15    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v16    # "selected":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .restart local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto/16 :goto_0

    .line 203
    .end local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .restart local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto/16 :goto_0

    .line 205
    .end local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_5

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .restart local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto/16 :goto_0

    .line 208
    .end local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto/16 :goto_0

    .line 210
    .restart local v7    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v15, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    .line 231
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    .restart local v5    # "width":F
    .restart local v6    # "height":F
    .restart local v9    # "string":Ljava/lang/String;
    .restart local v14    # "color":Lcom/badlogic/gdx/graphics/Color;
    .restart local v15    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v16    # "selected":Ljava/lang/Object;, "TT;"
    :cond_7
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v6, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v8, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    goto :goto_2
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
    .line 160
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getList()Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    return-object v0
.end method

.method public getMaxListCount()I
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->validate()V

    .line 283
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->validate()V

    .line 278
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    return v0
.end method

.method public getScrollPane()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 4

    .prologue
    .line 262
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v0

    .line 263
    .local v0, "selected":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

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
    .line 242
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    return-object v0
.end method

.method public hideList()V
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 293
    return-void
.end method

.method public layout()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 165
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 166
    .local v0, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 168
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v6

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v8

    add-float/2addr v6, v8

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v8

    add-float/2addr v6, v8

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v8

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    .line 174
    :goto_0
    const/4 v4, 0x0

    .line 175
    .local v4, "maxItemWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "i":I
    .end local v4    # "maxItemWidth":F
    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v8

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefHeight:F

    goto :goto_0

    .line 178
    .restart local v2    # "i":I
    .restart local v4    # "maxItemWidth":F
    :cond_1
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    .line 179
    if-eqz v0, :cond_2

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v8

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v6, v8

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    .line 181
    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 182
    .local v3, "listStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 183
    .local v5, "scrollStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v6, :cond_4

    move v6, v7

    :goto_2
    add-float/2addr v6, v4

    iget-object v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v9

    add-float/2addr v6, v9

    iget-object v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    add-float/2addr v9, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    :goto_3
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v10, :cond_3

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->prefWidth:F

    .line 192
    return-void

    .line 183
    :cond_4
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v6

    iget-object v9, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    add-float/2addr v6, v9

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3
.end method

.method protected onHide(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "selectBoxList"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 311
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 312
    const v0, 0x3e19999a    # 0.15f

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 313
    return-void
.end method

.method protected onShow(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 2
    .param p1, "selectBoxList"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "below"    # Z

    .prologue
    .line 306
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 307
    const v0, 0x3e99999a    # 0.3f

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 308
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 272
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    .line 273
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->disabled:Z

    .line 274
    return-void
.end method

.method public setItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    .local p1, "newItems":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "newItems cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v0

    .line 142
    .local v0, "oldPrefWidth":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidate()V

    .line 148
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    .line 149
    :cond_1
    return-void
.end method

.method public varargs setItems([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "newItems cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v0

    .line 128
    .local v0, "oldPrefWidth":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidate()V

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getPrefWidth()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    .line 135
    :cond_1
    return-void
.end method

.method public setMaxListCount(I)V
    .locals 1
    .param p1, "maxListCount"    # I

    .prologue
    .line 98
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    .line 99
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
    .line 252
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    goto :goto_0
.end method

.method public setSelectedIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 268
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 1
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 107
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 109
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    .prologue
    .line 112
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    .line 115
    return-void
.end method

.method public showList()V
    .locals 2

    .prologue
    .line 287
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectBoxList:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    goto :goto_0
.end method
