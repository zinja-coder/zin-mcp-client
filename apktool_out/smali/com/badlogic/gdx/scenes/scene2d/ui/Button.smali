.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "Button.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    }
.end annotation


# instance fields
.field buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field isChecked:Z

.field isDisabled:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 2
    .param p1, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 70
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 71
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 108
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 75
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 77
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 52
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 2
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 58
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 59
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 60
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setSize(FF)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .param p1, "up"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 96
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v0, p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .param p1, "up"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "down"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 100
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1
    .param p1, "up"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "down"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "checked"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 104
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 105
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 87
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 93
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->validate()V

    .line 185
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result v4

    .line 186
    .local v4, "isPressed":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v3

    .line 188
    .local v3, "isDisabled":Z
    const/4 v0, 0x0

    .line 189
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_1

    .line 190
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 199
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 201
    const/4 v5, 0x0

    .local v5, "offsetX":F
    const/4 v6, 0x0

    .line 202
    .local v6, "offsetY":F
    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 203
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v5, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    .line 204
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v6, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    .line 210
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 211
    .local v1, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v8, :cond_7

    .line 212
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    .end local v1    # "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v2    # "i":I
    .end local v5    # "offsetX":F
    .end local v6    # "offsetY":F
    :cond_1
    if-eqz v4, :cond_2

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_2

    .line 192
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 193
    :cond_2
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_4

    .line 194
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_3
    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_3

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_5

    .line 196
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 197
    :cond_5
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_0

    .line 198
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 206
    .restart local v5    # "offsetX":F
    .restart local v6    # "offsetY":F
    :cond_6
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v5, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    .line 207
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v6, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    goto :goto_1

    .line 213
    .restart local v1    # "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .restart local v2    # "i":I
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 214
    const/4 v2, 0x0

    :goto_4
    iget v8, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v8, :cond_8

    .line 215
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    neg-float v9, v5

    neg-float v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->moveBy(FF)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 217
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v7

    .line 218
    .local v7, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isPressed()Z

    move-result v8

    if-eq v4, v8, :cond_9

    .line 219
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 220
    :cond_9
    return-void
.end method

.method public getButtonGroup()Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    return-object v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    .line 232
    .local v0, "height":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 235
    :cond_2
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    .line 224
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 227
    :cond_2
    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    return v0
.end method

.method public isOver()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isVisualPressed()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v1, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-virtual {v1, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :cond_2
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 115
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 116
    .local v0, "changeEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 117
    :cond_3
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "isDisabled"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    .line 149
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 3
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 152
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "style cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v1, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 168
    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 169
    return-void

    .line 157
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    .line 160
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 161
    :cond_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_5

    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isOver()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_6

    .line 164
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 166
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
