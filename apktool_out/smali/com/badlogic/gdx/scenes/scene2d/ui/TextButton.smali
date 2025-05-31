.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "TextButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    }
.end annotation


# instance fields
.field private final label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 33
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>()V

    .line 44
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 45
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setSize(FF)V

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 84
    .local v0, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 86
    return-void

    .line 76
    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->downFontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 78
    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->isChecked:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->checkedOverFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->checkedOverFontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :goto_1
    goto :goto_0

    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->checkedFontColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->isOver()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_5

    .line 81
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0

    .line 83
    .end local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .restart local v0    # "fontColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_0
.end method

.method public getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method public getLabelCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 4
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "style cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "style must be a TextButtonStyle."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    move-object v2, p1

    .line 58
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 60
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 61
    .local v1, "textButtonStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    .line 62
    .local v0, "labelStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 63
    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 64
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 66
    .end local v0    # "labelStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .end local v1    # "textButtonStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
