.class public Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
.super Ljava/lang/Object;
.source "JsonValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrettyPrintSettings"
.end annotation


# instance fields
.field public outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public singleLineColumns:I

.field public wrapNumericArrays:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
