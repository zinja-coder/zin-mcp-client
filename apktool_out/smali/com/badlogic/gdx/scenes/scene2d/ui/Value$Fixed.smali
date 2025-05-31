.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation


# instance fields
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    .line 38
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    .line 39
    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .param p1, "context"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 42
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    return v0
.end method
