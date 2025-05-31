.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
.super Ljava/lang/Object;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

.field public fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

.field public selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 266
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 272
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "fontColorSelected"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "fontColorUnselected"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "selection"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 266
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 275
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 278
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 279
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 266
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 282
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 285
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 286
    return-void
.end method
