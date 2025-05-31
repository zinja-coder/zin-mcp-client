.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
.source "ImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageButtonStyle"
.end annotation


# instance fields
.field public imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 0
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;)V
    .locals 1
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 119
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 120
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 121
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 122
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 123
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageCheckedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 124
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1, "up"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "down"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p3, "checked"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p4, "imageUp"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p5, "imageDown"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p6, "imageChecked"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 112
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageUp:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 113
    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 114
    iput-object p6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;->imageChecked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 115
    return-void
.end method
