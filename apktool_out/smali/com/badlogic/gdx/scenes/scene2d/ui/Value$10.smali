.class final Lcom/badlogic/gdx/scenes/scene2d/ui/Value$10;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->percentHeight(FLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field final synthetic val$percent:F


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$10;->val$actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$10;->val$percent:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 2
    .param p1, "context"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$10;->val$actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$10;->val$percent:F

    mul-float/2addr v0, v1

    return v0
.end method
