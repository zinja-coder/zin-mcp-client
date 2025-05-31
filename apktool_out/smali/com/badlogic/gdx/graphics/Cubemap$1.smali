.class final Lcom/badlogic/gdx/graphics/Cubemap$1;
.super Ljava/lang/Object;
.source "Cubemap.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/Cubemap;->invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$refCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/badlogic/gdx/graphics/Cubemap$1;->val$refCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 240
    iget v0, p0, Lcom/badlogic/gdx/graphics/Cubemap$1;->val$refCount:I

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    .line 241
    return-void
.end method
