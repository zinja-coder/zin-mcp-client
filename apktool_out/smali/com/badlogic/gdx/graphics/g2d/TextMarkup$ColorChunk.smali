.class public Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
.super Ljava/lang/Object;
.source "TextMarkup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextMarkup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorChunk"
.end annotation


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
