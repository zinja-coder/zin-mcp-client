.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    }
.end annotation


# static fields
.field private static final tempColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private final bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field private cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field private ellipsis:Z

.field private fontScaleX:F

.field private fontScaleY:F

.field private labelAlign:I

.field private lastPrefHeight:F

.field private lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

.field private sizeInvalid:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private tempText:Lcom/badlogic/gdx/utils/StringBuilder;

.field private final text:Lcom/badlogic/gdx/utils/StringBuilder;

.field private wrap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 41
    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    .line 42
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    .line 46
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    .line 70
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 71
    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 72
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setSize(FF)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 50
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 60
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "colorName"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 67
    return-void
.end method

.method private computeSize()V
    .locals 4

    .prologue
    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    .line 135
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getWidth()F

    move-result v0

    .line 137
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getWrappedBounds(Ljava/lang/CharSequence;F)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 141
    .end local v0    # "width":F
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    goto :goto_0
.end method

.method private scaleAndComputeSize()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 123
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    .line 124
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v1

    .line 125
    .local v1, "oldScaleX":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v2

    .line 126
    .local v2, "oldScaleY":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->computeSize()V

    .line 130
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 131
    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->validate()V

    .line 208
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 209
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p2

    iput v0, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 211
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tint(Lcom/badlogic/gdx/graphics/Color;)V

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 218
    return-void
.end method

.method protected getBitmapFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    return-object v0
.end method

.method public getFontScaleX()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    return v0
.end method

.method public getFontScaleY()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 5

    .prologue
    .line 230
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->scaleAndComputeSize()V

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 232
    .local v1, "height":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 233
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 234
    :cond_1
    return v1
.end method

.method public getPrefWidth()F
    .locals 4

    .prologue
    .line 221
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->scaleAndComputeSize()V

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 224
    .local v1, "width":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 225
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method public getText()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public getTextBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->scaleAndComputeSize()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    .line 120
    return-void
.end method

.method public layout()V
    .locals 20

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v11

    .line 145
    .local v11, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v13

    .line 146
    .local v13, "oldScaleX":F
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v14

    .line 147
    .local v14, "oldScaleY":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    invoke-virtual {v11, v3, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->sizeInvalid:Z

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->computeSize()V

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v3, :cond_3

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v15

    .line 153
    .local v15, "prefHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lastPrefHeight:F

    cmpl-float v3, v15, v3

    if-eqz v3, :cond_3

    .line 154
    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lastPrefHeight:F

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 159
    .end local v15    # "prefHeight":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getWidth()F

    move-result v16

    .local v16, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getHeight()F

    move-result v12

    .line 161
    .local v12, "height":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    cmpg-float v3, v16, v3

    if-gez v3, :cond_b

    .line 162
    const-string v3, "..."

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    iget v10, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 163
    .local v10, "ellipseWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempText:Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempText:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 164
    .local v4, "text":Lcom/badlogic/gdx/utils/StringBuilder;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 165
    cmpl-float v3, v16, v10

    if-lez v3, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    move/from16 v18, v0

    sub-float v19, v16, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v8, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v8

    invoke-virtual {v4, v3, v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 167
    const-string v3, "..."

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 172
    .end local v10    # "ellipseWidth":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 173
    .local v9, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    const/4 v5, 0x0

    .local v5, "x":F
    const/4 v6, 0x0

    .line 174
    .local v6, "y":F
    if-eqz v9, :cond_5

    .line 175
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    .line 176
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v6

    .line 177
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v7

    add-float/2addr v3, v7

    sub-float v16, v16, v3

    .line 178
    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v7

    add-float/2addr v3, v7

    sub-float/2addr v12, v3

    .line 180
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    :goto_2
    add-float/2addr v6, v3

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    add-float/2addr v6, v3

    .line 188
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v6, v3

    .line 190
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_7

    .line 191
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_10

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v3, v16, v3

    add-float/2addr v5, v3

    .line 197
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 198
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    if-eqz v3, :cond_11

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 203
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_9

    :cond_8
    invoke-virtual {v11, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 204
    :cond_9
    return-void

    .line 163
    .end local v4    # "text":Lcom/badlogic/gdx/utils/StringBuilder;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v9    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v10    # "ellipseWidth":F
    :cond_a
    new-instance v4, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->tempText:Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    .line 170
    .end local v10    # "ellipseWidth":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    .restart local v4    # "text":Lcom/badlogic/gdx/utils/StringBuilder;
    goto/16 :goto_1

    .line 181
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    .restart local v9    # "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float v3, v12, v3

    goto/16 :goto_2

    .line 183
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_f

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float v3, v12, v3

    :goto_6
    add-float/2addr v6, v3

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    sub-float/2addr v6, v3

    goto/16 :goto_3

    .line 184
    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    .line 187
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float v3, v12, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    goto/16 :goto_3

    .line 194
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v3, v16, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    goto/16 :goto_4

    .line 201
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->bounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    goto/16 :goto_5
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "alignment"    # I

    .prologue
    .line 264
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(II)V

    .line 265
    return-void
.end method

.method public setAlignment(II)V
    .locals 1
    .param p1, "labelAlign"    # I
    .param p2, "lineAlign"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->labelAlign:I

    .line 273
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidate()V

    .line 281
    return-void

    .line 275
    :cond_0
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->RIGHT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    goto :goto_0

    .line 278
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->lineAlign:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    goto :goto_0
.end method

.method public setBreakChars([C)V
    .locals 1
    .param p1, "breakChars"    # [C

    .prologue
    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setBreakChars([C)V

    .line 258
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 259
    return-void
.end method

.method public setEllipsis(Z)V
    .locals 0
    .param p1, "ellipsis"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->ellipsis:Z

    .line 316
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .param p1, "fontScale"    # F

    .prologue
    .line 284
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    .line 285
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 287
    return-void
.end method

.method public setFontScale(FF)V
    .locals 0
    .param p1, "fontScaleX"    # F
    .param p2, "fontScaleY"    # F

    .prologue
    .line 290
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    .line 291
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    .line 292
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 293
    return-void
.end method

.method public setFontScaleX(F)V
    .locals 0
    .param p1, "fontScaleX"    # F

    .prologue
    .line 300
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleX:F

    .line 301
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 302
    return-void
.end method

.method public setFontScaleY(F)V
    .locals 0
    .param p1, "fontScaleY"    # F

    .prologue
    .line 309
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->fontScaleY:F

    .line 310
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 311
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 3
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .prologue
    .line 76
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing LabelStyle font."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 81
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p1, :cond_0

    const-string p1, ""

    .line 92
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    .end local p1    # "newText":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 94
    .restart local p1    # "newText":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    .end local p1    # "newText":Ljava/lang/CharSequence;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    goto :goto_0

    .line 97
    .restart local p1    # "newText":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1
.end method

.method public setWrap(Z)V
    .locals 0
    .param p1, "wrap"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->wrap:Z

    .line 251
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidateHierarchy()V

    .line 252
    return-void
.end method

.method public textEquals(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v2, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 106
    .local v2, "length":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, v4, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 107
    .local v0, "chars":[C
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 108
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 109
    aget-char v4, v0, v1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->text:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
