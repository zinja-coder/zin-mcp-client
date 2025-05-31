.class Lcom/badlogic/gdx/graphics/g2d/TextMarkup$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "TextMarkup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g2d/TextMarkup;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextMarkup;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$1;->this$0:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$1;->newObject()Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    move-result-object v0

    return-object v0
.end method
