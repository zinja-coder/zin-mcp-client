.class public Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    }
.end annotation


# instance fields
.field private image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->clearChildren()V

    .line 43
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    .line 45
    .local v0, "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getPrefWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getPrefHeight()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setSize(FF)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 33
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "checkbox":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 70
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 71
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 78
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 79
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 80
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOffDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isOver()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1
.end method

.method public getImage()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public getImageCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    move-result-object v0

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 51
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style must be a CheckBoxStyle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 53
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .end local p1    # "style":Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .line 54
    return-void
.end method
