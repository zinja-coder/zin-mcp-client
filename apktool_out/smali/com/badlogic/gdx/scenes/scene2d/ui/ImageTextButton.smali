.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "ImageTextButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;
    }
.end annotation


# instance fields
.field private final image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private final label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 50
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    .line 52
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 62
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 64
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setSize(FF)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 39
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 46
    return-void
.end method

.method private updateImage()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 97
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 98
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 91
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 95
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->updateImage()V

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 113
    .local v0, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 115
    return-void

    .line 105
    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 107
    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isChecked:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedOverFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedOverFontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_1
    goto :goto_0

    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_5

    .line 110
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 112
    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0
.end method

.method public getImage()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public getImageCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method public getLabelCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 4
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 68
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "style must be a ImageTextButtonStyle."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    move-object v2, p1

    .line 70
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->updateImage()V

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 73
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    .line 74
    .local v1, "textButtonStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    .line 75
    .local v0, "labelStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 76
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 77
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 79
    .end local v0    # "labelStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .end local v1    # "textButtonStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;
    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
