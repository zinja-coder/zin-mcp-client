.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public stageBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public titleFontColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 372
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .param p1, "titleFont"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "titleFontColor"    # Lcom/badlogic/gdx/graphics/Color;
    .param p3, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 375
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 376
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 378
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 381
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 382
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 383
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;->titleFontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 384
    return-void
.end method
