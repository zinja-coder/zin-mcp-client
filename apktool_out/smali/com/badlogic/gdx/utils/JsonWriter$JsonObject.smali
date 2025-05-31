.class Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonObject"
.end annotation


# instance fields
.field final array:Z

.field needsComma:Z

.field final synthetic this$0:Lcom/badlogic/gdx/utils/JsonWriter;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V
    .locals 2
    .param p2, "array"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->this$0:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    .line 161
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    if-eqz p2, :cond_0

    const/16 v0, 0x5b

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/16 v0, 0x7b

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->this$0:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 166
    return-void

    .line 165
    :cond_0
    const/16 v0, 0x7d

    goto :goto_0
.end method
