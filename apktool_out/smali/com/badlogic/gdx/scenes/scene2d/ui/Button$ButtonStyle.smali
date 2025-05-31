.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
.super Ljava/lang/Object;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonStyle"
.end annotation


# instance fields
.field public checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public pressedOffsetX:F

.field public pressedOffsetY:F

.field public unpressedOffsetX:F

.field public unpressedOffsetY:F

.field public up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 265
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 266
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 267
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 268
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 269
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 270
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    .line 271
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    .line 272
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    .line 273
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1, "up"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "down"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "checked"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 259
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 260
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 261
    return-void
.end method
