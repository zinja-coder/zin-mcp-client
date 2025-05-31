.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliderStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;-><init>()V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 0
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0
    .param p1, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "knob"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 153
    return-void
.end method
