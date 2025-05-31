.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;
.super Ljava/lang/Object;
.source "Touchpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchpadStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
    .locals 1
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 248
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "knob"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 243
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 244
    return-void
.end method
